public inherited sharing class OrderSelector {
    public List<Order__c> getOrdersByCustomerId(Id customerId) {
        return [SELECT Id, Name, Total_Amount__c, Status__c, CreatedDate,
                (SELECT Id, Product__r.Name, Product__r.Image_URL__c, Quantity__c, Price__c FROM Order_Items__r)
                FROM Order__c WHERE Customer__c = :customerId ORDER BY CreatedDate DESC];
    }
}