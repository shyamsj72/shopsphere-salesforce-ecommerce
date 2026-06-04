public with sharing class ShopSphereAuthController {
    @AuraEnabled
    public static Id login(String email, String password) {
        List<ShopSphere_Customer__c> custs = [SELECT Id, Password__c FROM ShopSphere_Customer__c WHERE Email__c = :email LIMIT 1];
        if(custs.isEmpty()) throw new AuraHandledException('Invalid email or password.');
        if(custs[0].Password__c != password) throw new AuraHandledException('Invalid email or password.');
        return custs[0].Id;
    }

    @AuraEnabled
    public static Id register(String name, String email, String password) {
        List<ShopSphere_Customer__c> existing = [SELECT Id FROM ShopSphere_Customer__c WHERE Email__c = :email LIMIT 1];
        if(!existing.isEmpty()) throw new AuraHandledException('An account with this email already exists.');
        
        ShopSphere_Customer__c c = new ShopSphere_Customer__c(Name = name, Email__c = email, Password__c = password);
        insert c;
        return c.Id;
    }
}
