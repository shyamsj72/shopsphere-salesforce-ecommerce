public with sharing class ShopSphereCartController {
    private static CartService cartService = new CartService();
    
    @AuraEnabled
    public static Cart__c getCart(Id customerId) {
        try {
            return cartService.getOrCreateActiveCart(customerId);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
    
    @AuraEnabled
    public static void addToCart(Id customerId, Id productId, Integer quantity) {
        try {
            cartService.addItemToCart(customerId, productId, quantity);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
    
    @AuraEnabled
    public static void updateCartItem(Id cartItemId, Integer quantity) {
        try {
            cartService.updateItemQuantity(cartItemId, quantity);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
    
    @AuraEnabled
    public static String checkout(Id customerId, String deliveryAddress, String paymentMethod) {
        try {
            return cartService.checkoutCart(customerId, deliveryAddress, paymentMethod);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
}