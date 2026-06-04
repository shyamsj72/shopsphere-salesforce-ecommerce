public with sharing class ShopSphereUserController {
    @AuraEnabled
    public static List<Order__c> getOrderHistory(Id customerId) {
        try {
            return new OrderSelector().getOrdersByCustomerId(customerId);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
}