public inherited sharing class CartSelector {
    public Cart__c getActiveCartByCustomerId(Id customerId) {
        List<Cart__c> carts = [SELECT Id, Total_Amount__c, 
                               (SELECT Id, Product__c, Product__r.Name, Product__r.Image_URL__c, Quantity__c, Price__c, Total_Price__c FROM Cart_Items__r) 
                               FROM Cart__c WHERE Customer__c = :customerId LIMIT 1];
        return carts.isEmpty() ? null : carts[0];
    }
    
    public List<Cart_Item__c> getCartItem(Id cartId, Id productId) {
        return [SELECT Id, Quantity__c FROM Cart_Item__c WHERE Cart__c = :cartId AND Product__c = :productId];
    }
}