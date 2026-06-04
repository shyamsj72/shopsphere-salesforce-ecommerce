public with sharing class ShopSphereInvoiceController {
    public Order__c ord { get; set; }
    
    public ShopSphereInvoiceController() {
        String orderId = ApexPages.currentPage().getParameters().get('id');
        if (String.isNotBlank(orderId)) {
            ord = [SELECT Id, Name, CreatedDate, Status__c, Delivery_Address__c, Total_Amount__c,
                          Customer__r.Name, Customer__r.Email__c,
                          (SELECT Id, Product__r.Name, Quantity__c, Price__c, Total_Price__c FROM Order_Items__r)
                   FROM Order__c WHERE Id = :orderId LIMIT 1];
        }
    }
}