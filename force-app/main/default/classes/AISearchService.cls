public inherited sharing class AISearchService {
    // Simulates an Agentforce Copilot endpoint for smart search autocomplete
    public List<Map<String, String>> getSearchSuggestions(String searchTerm) {
        List<Map<String, String>> suggestions = new List<Map<String, String>>();
        if (String.isBlank(searchTerm)) return suggestions;
        
        String key = '%' + String.escapeSingleQuotes(searchTerm) + '%';
        List<Product__c> prods = [SELECT Id, Name, Category__r.Name FROM Product__c WHERE Name LIKE :key LIMIT 5];
        
        for(Product__c p : prods) {
            suggestions.add(new Map<String, String>{
                'id' => p.Id,
                'title' => p.Name,
                'type' => 'Product',
                'context' => 'in ' + p.Category__r.Name
            });
        }
        return suggestions;
    }
}