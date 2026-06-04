public inherited sharing class CategorySelector {
    public List<Category__c> getAllCategories() {
        return [SELECT Id, Name, Banner_Image__c, Icon_URL__c FROM Category__c ORDER BY Name];
    }
}