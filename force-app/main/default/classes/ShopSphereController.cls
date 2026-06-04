public with sharing class ShopSphereController {
    
    @AuraEnabled(cacheable=true)
    public static List<Category__c> getCategories() {
        try {
            return new CategorySelector().getAllCategories();
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Product__c> getProducts(String categoryId, String searchTerm) {
        try {
            return new ProductSelector().searchProducts(categoryId, searchTerm);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Product__c> getTrendingProducts() {
        try {
            return new ProductSelector().getTrendingProducts(10);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }

    @AuraEnabled(cacheable=true)
    public static Product__c getProductDetails(String productId) {
        try {
            return new ProductSelector().getProductById(productId);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Map<String, String>> getSearchSuggestions(String searchTerm) {
        try {
            return new AISearchService().getSearchSuggestions(searchTerm);
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Product__c> getAIRecommendations() {
        try {
            return new AIRecommendationService().getPersonalizedRecommendations();
        } catch(Exception e) { throw new AuraHandledException(e.getMessage()); }
    }
}