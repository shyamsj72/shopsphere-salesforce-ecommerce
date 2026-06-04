public inherited sharing class CartService {
    private CartSelector cartSelector = new CartSelector();
    
    public Cart__c getOrCreateActiveCart(Id customerId) {
        Cart__c cart = cartSelector.getActiveCartByCustomerId(customerId);
        if (cart == null) {
            cart = new Cart__c(Customer__c = customerId);
            insert cart;
            cart = cartSelector.getActiveCartByCustomerId(customerId);
        }
        return cart;
    }
    
    public void addItemToCart(Id customerId, Id productId, Integer quantity) {
        Cart__c cart = getOrCreateActiveCart(customerId);
        Product__c prod = new ProductSelector().getProductById(productId);
        if(prod == null) throw new ShopSphereException('Product not found');
        
        List<Cart_Item__c> existingItems = cartSelector.getCartItem(cart.Id, productId);
        if (!existingItems.isEmpty()) {
            existingItems[0].Quantity__c += quantity;
            update existingItems[0];
        } else {
            insert new Cart_Item__c(Cart__c = cart.Id, Product__c = productId, Quantity__c = quantity, Price__c = prod.Price__c);
        }
    }
    
    public void updateItemQuantity(Id cartItemId, Integer quantity) {
        if(quantity <= 0) {
            delete [SELECT Id FROM Cart_Item__c WHERE Id = :cartItemId];
        } else {
            update new Cart_Item__c(Id = cartItemId, Quantity__c = quantity);
        }
    }
    
    public String checkoutCart(Id customerId, String deliveryAddress, String paymentMethod) {
        Cart__c cart = getOrCreateActiveCart(customerId);
        if (cart.Cart_Items__r.isEmpty()) throw new ShopSphereException('Cart is empty');
        
        Savepoint sp = Database.setSavepoint();
        try {
            Order__c newOrder = new Order__c(
                Customer__c = customerId, Total_Amount__c = cart.Total_Amount__c, Status__c = 'Pending',
                Delivery_Address__c = deliveryAddress, Payment_Method__c = paymentMethod
            );
            insert newOrder;
            
            List<Order_Item__c> orderItems = new List<Order_Item__c>();
            for(Cart_Item__c ci : cart.Cart_Items__r) {
                orderItems.add(new Order_Item__c(Order__c = newOrder.Id, Product__c = ci.Product__c, Quantity__c = ci.Quantity__c, Price__c = ci.Price__c));
            }
            insert orderItems;
            delete cart; 
            return newOrder.Id;
        } catch(Exception e) {
            Database.rollback(sp);
            throw new ShopSphereException('Checkout failed: ' + e.getMessage());
        }
    }
}