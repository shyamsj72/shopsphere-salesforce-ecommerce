public inherited sharing class ProductSelector {
    public List<Product__c> getTrendingProducts(Integer limitCount) {
        return [SELECT Id, Name, Price__c, Rating__c, Image_URL__c, Prime_Eligible__c, Discount_Percentage__c, Brand__c 
                FROM Product__c WHERE Stock__c > 0 ORDER BY Rating__c DESC NULLS LAST LIMIT :limitCount];
    }
    
    public List<Product__c> searchProducts(String categoryId, String searchTerm) {
        String query = 'SELECT Id, Name, Price__c, Description__c, Category__r.Name, Stock__c, Rating__c, Image_URL__c, Brand__c, Discount_Percentage__c, Prime_Eligible__c FROM Product__c WHERE Stock__c > 0';
        if (String.isNotBlank(categoryId)) query += ' AND Category__c = :categoryId';
        if (String.isNotBlank(searchTerm)) {
            String searchKey = '%' + String.escapeSingleQuotes(searchTerm) + '%';
            query += ' AND Name LIKE :searchKey';
        }
        query += ' ORDER BY CreatedDate DESC LIMIT 50';
        return Database.query(query);
    }
    
    public Product__c getProductById(Id productId) {
        List<Product__c> prods = [SELECT Id, Name, Price__c, Description__c, Category__r.Name, Stock__c, Rating__c, Image_URL__c, Brand__c, Discount_Percentage__c, Prime_Eligible__c, Delivery_Time__c
                FROM Product__c WHERE Id = :productId LIMIT 1];
        return prods.isEmpty() ? null : prods[0];
    }
    
    public List<Product__c> getProductsByTags(List<String> tags) {
        // AI matching simulation: fetch random products simulating personalized results
        return [SELECT Id, Name, Price__c, Rating__c, Image_URL__c, Prime_Eligible__c, Discount_Percentage__c, Brand__c 
                FROM Product__c WHERE Stock__c > 0 ORDER BY CreatedDate DESC LIMIT 10];
    }
}