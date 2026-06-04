public inherited sharing class AIRecommendationService {
    // Simulates an Agentforce Recommendation Engine
    public List<Product__c> getPersonalizedRecommendations() {
        // In a real scenario, this would call Einstein or process Order History to find matching affinities.
        // We will simulate this by fetching recent trending items mixed with random stock.
        return new ProductSelector().getProductsByTags(new List<String>{'tech', 'modern'});
    }
}