// Run this script in Anonymous Apex to populate sample data
delete [SELECT Id FROM Product__c];
delete [SELECT Id FROM Category__c];

List<Category__c> categories = new List<Category__c>{
    new Category__c(Name = 'Electronics', Banner_Image__c = 'https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=500&q=60'),
    new Category__c(Name = 'Home & Kitchen', Banner_Image__c = 'https://images.unsplash.com/photo-1556911220-bff31c812dba?auto=format&fit=crop&w=500&q=60'),
    new Category__c(Name = 'Books', Banner_Image__c = 'https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=500&q=60'),
    new Category__c(Name = 'Fashion', Banner_Image__c = 'https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=500&q=60')
};
insert categories;

List<Product__c> products = new List<Product__c>();
// Electronics
products.add(new Product__c(
    Name = 'Echo Dot (4th Gen) | Smart speaker with Alexa',
    Description__c = 'Meet the all-new Echo Dot - Our most popular smart speaker with Alexa. The sleek, compact design delivers crisp vocals and balanced bass for full sound.',
    Price__c = 49.99, Stock__c = 100, Rating__c = 4.8, Brand__c = 'ShopSphere Devices', Prime_Eligible__c = true, Category__c = categories[0].Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1543512214-318c7553f230?auto=format&fit=crop&w=500&q=60'
));
products.add(new Product__c(
    Name = 'Sony Noise Cancelling Headphones',
    Description__c = 'Industry leading noise canceling with Dual Noise Sensor technology.',
    Price__c = 348.00, Stock__c = 50, Rating__c = 4.7, Brand__c = 'Sony', Prime_Eligible__c = true, Category__c = categories[0].Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=500&q=60'
));
products.add(new Product__c(
    Name = 'MacBook Air M2 2023',
    Description__c = 'Supercharged by M2 chip. 13.6-inch Liquid Retina display, 8GB RAM, 256GB SSD.',
    Price__c = 1099.00, Stock__c = 20, Rating__c = 4.9, Brand__c = 'Apple', Prime_Eligible__c = true, Category__c = categories[0].Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=500&q=60'
));

// Home & Kitchen
products.add(new Product__c(
    Name = 'Instant Pot Duo 7-in-1 Electric Pressure Cooker',
    Description__c = 'Best-selling model: Monitors pressure, temperature, keeps time, and adjusts heating intensity.',
    Price__c = 89.99, Stock__c = 200, Rating__c = 4.6, Brand__c = 'Instant Pot', Prime_Eligible__c = true, Category__c = categories[1].Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1584269600519-112d08a5a769?auto=format&fit=crop&w=500&q=60'
));

// Books
products.add(new Product__c(
    Name = 'Atomic Habits: An Easy & Proven Way to Build Good Habits',
    Description__c = 'No matter your goals, Atomic Habits offers a proven framework for improving--every day.',
    Price__c = 11.98, Stock__c = 500, Rating__c = 4.9, Brand__c = 'James Clear', Prime_Eligible__c = true, Category__c = categories[2].Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?auto=format&fit=crop&w=500&q=60'
));

// Fashion
products.add(new Product__c(
    Name = 'Men\'s Classic Fit Long-Sleeve Oxford Shirt',
    Description__c = 'A versatile classic that is easy to care for and look great in.',
    Price__c = 25.00, Stock__c = 150, Rating__c = 4.3, Brand__c = 'ShopSphere Essentials', Prime_Eligible__c = true, Category__c = categories[3].Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1596755094514-f87e32f08286?auto=format&fit=crop&w=500&q=60'
));

insert products;
System.debug('Sample Data Generated Successfully!');