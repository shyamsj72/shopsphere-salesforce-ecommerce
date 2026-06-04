// 100 Sample Products Generator Script
delete [SELECT Id FROM Product__c];
delete [SELECT Id FROM Category__c];

List<Category__c> catsToInsert = new List<Category__c>();
Category__c cat0 = new Category__c(Name='Electronics', Banner_Image__c='https://images.unsplash.com/photo-1498049794561-7780e7231661?w=500&q=80');
catsToInsert.add(cat0);
Category__c cat1 = new Category__c(Name='Fashion', Banner_Image__c='https://images.unsplash.com/photo-1445205170230-053b83016050?w=500&q=80');
catsToInsert.add(cat1);
Category__c cat2 = new Category__c(Name='Home Decor', Banner_Image__c='https://images.unsplash.com/photo-1556911220-bff31c812dba?w=500&q=80');
catsToInsert.add(cat2);
Category__c cat3 = new Category__c(Name='Books', Banner_Image__c='https://images.unsplash.com/photo-1512820790803-83ca734da794?w=500&q=80');
catsToInsert.add(cat3);
Category__c cat4 = new Category__c(Name='Gaming', Banner_Image__c='https://images.unsplash.com/photo-1552820728-8b83bb6b773f?w=500&q=80');
catsToInsert.add(cat4);
Category__c cat5 = new Category__c(Name='Smartphones', Banner_Image__c='https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500&q=80');
catsToInsert.add(cat5);
Category__c cat6 = new Category__c(Name='Laptops', Banner_Image__c='https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500&q=80');
catsToInsert.add(cat6);
insert catsToInsert;

List<Product__c> products = new List<Product__c>();

products.add(new Product__c(
    Name = 'Philips Ultra-Slim Soundbar',
    Description__c = 'Experience the ultimate quality with this ultra-slim soundbar from Philips. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 31.23, Stock__c = 170, Rating__c = 4.1, Brand__c = 'Philips', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat0.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Philips Waterproof Wireless Headphones',
    Description__c = 'Experience the ultimate quality with this waterproof wireless headphones from Philips. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 813.75, Stock__c = 125, Rating__c = 3.6, Brand__c = 'Philips', 
    Prime_Eligible__c = true, Discount_Percentage__c = 13.7, Category__c = cat0.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Panasonic Portable Bluetooth Speaker',
    Description__c = 'Experience the ultimate quality with this portable bluetooth speaker from Panasonic. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 823.89, Stock__c = 176, Rating__c = 3.7, Brand__c = 'Panasonic', 
    Prime_Eligible__c = true, Discount_Percentage__c = 13.4, Category__c = cat0.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'LG High-Fidelity Smartwatch',
    Description__c = 'Experience the ultimate quality with this high-fidelity smartwatch from LG. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 315.07, Stock__c = 301, Rating__c = 4.0, Brand__c = 'LG', 
    Prime_Eligible__c = true, Discount_Percentage__c = 15.6, Category__c = cat0.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Philips Advanced Bluetooth Speaker',
    Description__c = 'Experience the ultimate quality with this advanced bluetooth speaker from Philips. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1060.92, Stock__c = 276, Rating__c = 3.9, Brand__c = 'Philips', 
    Prime_Eligible__c = true, Discount_Percentage__c = 16.6, Category__c = cat0.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Sony High-Fidelity Digital Camera',
    Description__c = 'Experience the ultimate quality with this high-fidelity digital camera from Sony. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 573.62, Stock__c = 77, Rating__c = 4.7, Brand__c = 'Sony', 
    Prime_Eligible__c = true, Discount_Percentage__c = 24.4, Category__c = cat0.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1543512214-318c7553f230?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Samsung High-Fidelity Smartwatch',
    Description__c = 'Experience the ultimate quality with this high-fidelity smartwatch from Samsung. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1080.14, Stock__c = 248, Rating__c = 3.8, Brand__c = 'Samsung', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat0.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Panasonic Waterproof Bluetooth Speaker',
    Description__c = 'Experience the ultimate quality with this waterproof bluetooth speaker from Panasonic. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 736.05, Stock__c = 19, Rating__c = 3.6, Brand__c = 'Panasonic', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat0.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Samsung Waterproof Wireless Headphones',
    Description__c = 'Experience the ultimate quality with this waterproof wireless headphones from Samsung. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 973.32, Stock__c = 45, Rating__c = 4.0, Brand__c = 'Samsung', 
    Prime_Eligible__c = true, Discount_Percentage__c = 27.0, Category__c = cat0.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1543512214-318c7553f230?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Samsung High-Fidelity Bluetooth Speaker',
    Description__c = 'Experience the ultimate quality with this high-fidelity bluetooth speaker from Samsung. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 852.66, Stock__c = 112, Rating__c = 4.4, Brand__c = 'Samsung', 
    Prime_Eligible__c = true, Discount_Percentage__c = 29.5, Category__c = cat0.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'JBL Ultra-Slim Soundbar',
    Description__c = 'Experience the ultimate quality with this ultra-slim soundbar from JBL. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 196.88, Stock__c = 46, Rating__c = 3.9, Brand__c = 'JBL', 
    Prime_Eligible__c = true, Discount_Percentage__c = 16.0, Category__c = cat0.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Bose Ultra-Slim Noise Cancelling Earbuds',
    Description__c = 'Experience the ultimate quality with this ultra-slim noise cancelling earbuds from Bose. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 824.31, Stock__c = 337, Rating__c = 3.6, Brand__c = 'Bose', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat0.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1543512214-318c7553f230?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Samsung Waterproof Digital Camera',
    Description__c = 'Experience the ultimate quality with this waterproof digital camera from Samsung. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 73.97, Stock__c = 408, Rating__c = 3.7, Brand__c = 'Samsung', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat0.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Philips Advanced 4K Smart TV',
    Description__c = 'Experience the ultimate quality with this advanced 4k smart tv from Philips. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 106.81, Stock__c = 124, Rating__c = 4.9, Brand__c = 'Philips', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat0.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'LG Portable 4K Smart TV',
    Description__c = 'Experience the ultimate quality with this portable 4k smart tv from LG. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 200.26, Stock__c = 491, Rating__c = 4.7, Brand__c = 'LG', 
    Prime_Eligible__c = true, Discount_Percentage__c = 17.3, Category__c = cat0.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Puma Stylish Leather Belt',
    Description__c = 'Experience the ultimate quality with this stylish leather belt from Puma. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 895.36, Stock__c = 369, Rating__c = 4.3, Brand__c = 'Puma', 
    Prime_Eligible__c = true, Discount_Percentage__c = 22.4, Category__c = cat1.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Nike Stylish Running Shoes',
    Description__c = 'Experience the ultimate quality with this stylish running shoes from Nike. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 297.22, Stock__c = 183, Rating__c = 4.4, Brand__c = 'Nike', 
    Prime_Eligible__c = false, Discount_Percentage__c = 2.5, Category__c = cat1.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Adidas Stylish Running Shoes',
    Description__c = 'Experience the ultimate quality with this stylish running shoes from Adidas. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1114.23, Stock__c = 411, Rating__c = 5.0, Brand__c = 'Adidas', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat1.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Puma Casual Running Shoes',
    Description__c = 'Experience the ultimate quality with this casual running shoes from Puma. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1066.31, Stock__c = 146, Rating__c = 4.6, Brand__c = 'Puma', 
    Prime_Eligible__c = true, Discount_Percentage__c = 24.6, Category__c = cat1.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Tommy Hilfiger Modern Sunglasses',
    Description__c = 'Experience the ultimate quality with this modern sunglasses from Tommy Hilfiger. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 949.31, Stock__c = 130, Rating__c = 3.6, Brand__c = 'Tommy Hilfiger', 
    Prime_Eligible__c = true, Discount_Percentage__c = 8.4, Category__c = cat1.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Puma Classic Winter Coat',
    Description__c = 'Experience the ultimate quality with this classic winter coat from Puma. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 702.44, Stock__c = 253, Rating__c = 3.5, Brand__c = 'Puma', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat1.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Puma Casual Sunglasses',
    Description__c = 'Experience the ultimate quality with this casual sunglasses from Puma. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 626.56, Stock__c = 330, Rating__c = 4.7, Brand__c = 'Puma', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat1.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Levi\'s Athletic Sunglasses',
    Description__c = 'Experience the ultimate quality with this athletic sunglasses from Levi\'s. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 763.5, Stock__c = 398, Rating__c = 4.6, Brand__c = 'Levi\'s', 
    Prime_Eligible__c = true, Discount_Percentage__c = 8.2, Category__c = cat1.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Ralph Lauren Casual Denim Jacket',
    Description__c = 'Experience the ultimate quality with this casual denim jacket from Ralph Lauren. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 268.46, Stock__c = 325, Rating__c = 3.6, Brand__c = 'Ralph Lauren', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat1.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Levi\'s Vintage Leather Belt',
    Description__c = 'Experience the ultimate quality with this vintage leather belt from Levi\'s. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 206.08, Stock__c = 220, Rating__c = 3.9, Brand__c = 'Levi\'s', 
    Prime_Eligible__c = true, Discount_Percentage__c = 10.7, Category__c = cat1.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Levi\'s Casual Sunglasses',
    Description__c = 'Experience the ultimate quality with this casual sunglasses from Levi\'s. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 951.19, Stock__c = 61, Rating__c = 4.5, Brand__c = 'Levi\'s', 
    Prime_Eligible__c = true, Discount_Percentage__c = 5.5, Category__c = cat1.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Puma Athletic Winter Coat',
    Description__c = 'Experience the ultimate quality with this athletic winter coat from Puma. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1078.62, Stock__c = 187, Rating__c = 3.5, Brand__c = 'Puma', 
    Prime_Eligible__c = true, Discount_Percentage__c = 16.6, Category__c = cat1.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Puma Modern Running Shoes',
    Description__c = 'Experience the ultimate quality with this modern running shoes from Puma. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1001.36, Stock__c = 261, Rating__c = 4.1, Brand__c = 'Puma', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat1.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Ralph Lauren Casual Cotton T-Shirt',
    Description__c = 'Experience the ultimate quality with this casual cotton t-shirt from Ralph Lauren. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 57.37, Stock__c = 150, Rating__c = 4.3, Brand__c = 'Ralph Lauren', 
    Prime_Eligible__c = true, Discount_Percentage__c = 21.6, Category__c = cat1.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Levi\'s Classic Cotton T-Shirt',
    Description__c = 'Experience the ultimate quality with this classic cotton t-shirt from Levi\'s. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 897.04, Stock__c = 232, Rating__c = 4.9, Brand__c = 'Levi\'s', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat1.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Crate & Barrel Elegant Area Rug',
    Description__c = 'Experience the ultimate quality with this elegant area rug from Crate & Barrel. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 131.38, Stock__c = 65, Rating__c = 3.9, Brand__c = 'Crate & Barrel', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Pottery Barn Rustic Wall Clock',
    Description__c = 'Experience the ultimate quality with this rustic wall clock from Pottery Barn. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 390.16, Stock__c = 273, Rating__c = 3.6, Brand__c = 'Pottery Barn', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1540574163026-643ea20d25b5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'IKEA Rustic Throw Pillow',
    Description__c = 'Experience the ultimate quality with this rustic throw pillow from IKEA. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 624.65, Stock__c = 183, Rating__c = 4.1, Brand__c = 'IKEA', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1507149833265-60c372a4f6fa?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Wayfair Elegant Throw Pillow',
    Description__c = 'Experience the ultimate quality with this elegant throw pillow from Wayfair. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1176.59, Stock__c = 42, Rating__c = 4.1, Brand__c = 'Wayfair', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1540574163026-643ea20d25b5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Wayfair Cozy Table Lamp',
    Description__c = 'Experience the ultimate quality with this cozy table lamp from Wayfair. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 497.01, Stock__c = 30, Rating__c = 5.0, Brand__c = 'Wayfair', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1583847268964-b28e5033c5e8?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Crate & Barrel Modern Area Rug',
    Description__c = 'Experience the ultimate quality with this modern area rug from Crate & Barrel. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 179.68, Stock__c = 448, Rating__c = 3.9, Brand__c = 'Crate & Barrel', 
    Prime_Eligible__c = false, Discount_Percentage__c = 16.1, Category__c = cat2.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1513694203232-719a280e022f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Wayfair Modern Area Rug',
    Description__c = 'Experience the ultimate quality with this modern area rug from Wayfair. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 295.8, Stock__c = 176, Rating__c = 3.7, Brand__c = 'Wayfair', 
    Prime_Eligible__c = false, Discount_Percentage__c = 26.6, Category__c = cat2.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1540574163026-643ea20d25b5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Crate & Barrel Rustic Wall Clock',
    Description__c = 'Experience the ultimate quality with this rustic wall clock from Crate & Barrel. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 403.79, Stock__c = 89, Rating__c = 3.6, Brand__c = 'Crate & Barrel', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Wayfair Rustic Wall Clock',
    Description__c = 'Experience the ultimate quality with this rustic wall clock from Wayfair. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 682.22, Stock__c = 443, Rating__c = 3.6, Brand__c = 'Wayfair', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1583847268964-b28e5033c5e8?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Pottery Barn Cozy Throw Pillow',
    Description__c = 'Experience the ultimate quality with this cozy throw pillow from Pottery Barn. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 522.11, Stock__c = 74, Rating__c = 4.3, Brand__c = 'Pottery Barn', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1583847268964-b28e5033c5e8?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Wayfair Mid-Century Wall Clock',
    Description__c = 'Experience the ultimate quality with this mid-century wall clock from Wayfair. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 974.07, Stock__c = 385, Rating__c = 4.8, Brand__c = 'Wayfair', 
    Prime_Eligible__c = true, Discount_Percentage__c = 20.1, Category__c = cat2.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1583847268964-b28e5033c5e8?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'IKEA Minimalist Sofa',
    Description__c = 'Experience the ultimate quality with this minimalist sofa from IKEA. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 436.48, Stock__c = 168, Rating__c = 4.3, Brand__c = 'IKEA', 
    Prime_Eligible__c = true, Discount_Percentage__c = 19.5, Category__c = cat2.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1507149833265-60c372a4f6fa?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Pottery Barn Cozy Area Rug',
    Description__c = 'Experience the ultimate quality with this cozy area rug from Pottery Barn. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1153.05, Stock__c = 72, Rating__c = 3.7, Brand__c = 'Pottery Barn', 
    Prime_Eligible__c = true, Discount_Percentage__c = 8.6, Category__c = cat2.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'West Elm Bohemian Wall Clock',
    Description__c = 'Experience the ultimate quality with this bohemian wall clock from West Elm. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 153.97, Stock__c = 387, Rating__c = 3.8, Brand__c = 'West Elm', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat2.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1540574163026-643ea20d25b5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Crate & Barrel Minimalist Area Rug',
    Description__c = 'Experience the ultimate quality with this minimalist area rug from Crate & Barrel. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 358.98, Stock__c = 273, Rating__c = 4.0, Brand__c = 'Crate & Barrel', 
    Prime_Eligible__c = false, Discount_Percentage__c = 22.7, Category__c = cat2.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1505691938895-1758d7feb511?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Penguin Captivating Biography',
    Description__c = 'Experience the ultimate quality with this captivating biography from Penguin. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 679.89, Stock__c = 320, Rating__c = 3.6, Brand__c = 'Penguin', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Simon & Schuster Inspiring Self-Help Book',
    Description__c = 'Experience the ultimate quality with this inspiring self-help book from Simon & Schuster. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1177.94, Stock__c = 252, Rating__c = 4.4, Brand__c = 'Simon & Schuster', 
    Prime_Eligible__c = true, Discount_Percentage__c = 11.5, Category__c = cat3.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1532012197267-da84d127e765?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Macmillan Thrilling History Book',
    Description__c = 'Experience the ultimate quality with this thrilling history book from Macmillan. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 805.06, Stock__c = 110, Rating__c = 4.4, Brand__c = 'Macmillan', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Simon & Schuster Inspiring History Book',
    Description__c = 'Experience the ultimate quality with this inspiring history book from Simon & Schuster. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 139.66, Stock__c = 456, Rating__c = 3.9, Brand__c = 'Simon & Schuster', 
    Prime_Eligible__c = true, Discount_Percentage__c = 1.5, Category__c = cat3.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1532012197267-da84d127e765?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Penguin Thrilling Cookbook',
    Description__c = 'Experience the ultimate quality with this thrilling cookbook from Penguin. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1132.95, Stock__c = 334, Rating__c = 3.7, Brand__c = 'Penguin', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Macmillan Classic History Book',
    Description__c = 'Experience the ultimate quality with this classic history book from Macmillan. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 682.49, Stock__c = 332, Rating__c = 3.9, Brand__c = 'Macmillan', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Macmillan Classic Science Fiction Novel',
    Description__c = 'Experience the ultimate quality with this classic science fiction novel from Macmillan. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 773.53, Stock__c = 468, Rating__c = 4.1, Brand__c = 'Macmillan', 
    Prime_Eligible__c = true, Discount_Percentage__c = 4.6, Category__c = cat3.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Simon & Schuster Insightful Science Fiction Novel',
    Description__c = 'Experience the ultimate quality with this insightful science fiction novel from Simon & Schuster. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 547.56, Stock__c = 385, Rating__c = 4.9, Brand__c = 'Simon & Schuster', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Random House Insightful Fantasy Epic',
    Description__c = 'Experience the ultimate quality with this insightful fantasy epic from Random House. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 877.33, Stock__c = 412, Rating__c = 4.5, Brand__c = 'Random House', 
    Prime_Eligible__c = true, Discount_Percentage__c = 4.8, Category__c = cat3.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Macmillan Classic Thriller',
    Description__c = 'Experience the ultimate quality with this classic thriller from Macmillan. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1093.15, Stock__c = 236, Rating__c = 4.3, Brand__c = 'Macmillan', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Macmillan Award-Winning Science Fiction Novel',
    Description__c = 'Experience the ultimate quality with this award-winning science fiction novel from Macmillan. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 919.28, Stock__c = 35, Rating__c = 3.9, Brand__c = 'Macmillan', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Penguin Bestselling History Book',
    Description__c = 'Experience the ultimate quality with this bestselling history book from Penguin. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1188.92, Stock__c = 19, Rating__c = 4.5, Brand__c = 'Penguin', 
    Prime_Eligible__c = true, Discount_Percentage__c = 25.8, Category__c = cat3.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1532012197267-da84d127e765?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Penguin Insightful History Book',
    Description__c = 'Experience the ultimate quality with this insightful history book from Penguin. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1155.22, Stock__c = 318, Rating__c = 4.0, Brand__c = 'Penguin', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat3.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Simon & Schuster Award-Winning Cookbook',
    Description__c = 'Experience the ultimate quality with this award-winning cookbook from Simon & Schuster. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1131.32, Stock__c = 369, Rating__c = 4.2, Brand__c = 'Simon & Schuster', 
    Prime_Eligible__c = false, Discount_Percentage__c = 12.5, Category__c = cat3.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Macmillan Insightful Fantasy Epic',
    Description__c = 'Experience the ultimate quality with this insightful fantasy epic from Macmillan. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 857.22, Stock__c = 134, Rating__c = 4.3, Brand__c = 'Macmillan', 
    Prime_Eligible__c = true, Discount_Percentage__c = 16.2, Category__c = cat3.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Nintendo High-Performance Mechanical Keyboard',
    Description__c = 'Experience the ultimate quality with this high-performance mechanical keyboard from Nintendo. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 750.34, Stock__c = 220, Rating__c = 4.1, Brand__c = 'Nintendo', 
    Prime_Eligible__c = true, Discount_Percentage__c = 25.1, Category__c = cat4.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1511512578047-dfb367046420?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'PlayStation Wireless Mousepad',
    Description__c = 'Experience the ultimate quality with this wireless mousepad from PlayStation. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 227.58, Stock__c = 351, Rating__c = 3.7, Brand__c = 'PlayStation', 
    Prime_Eligible__c = true, Discount_Percentage__c = 18.6, Category__c = cat4.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1606144042871-26eb3e48f58b?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'HyperX Wireless Headset',
    Description__c = 'Experience the ultimate quality with this wireless headset from HyperX. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 452.12, Stock__c = 72, Rating__c = 3.7, Brand__c = 'HyperX', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat4.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1612287230202-1ff1d85d1bdf?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'HyperX Pro Gaming Mouse',
    Description__c = 'Experience the ultimate quality with this pro gaming mouse from HyperX. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 282.09, Stock__c = 272, Rating__c = 4.4, Brand__c = 'HyperX', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat4.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Corsair Pro Mousepad',
    Description__c = 'Experience the ultimate quality with this pro mousepad from Corsair. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1173.36, Stock__c = 278, Rating__c = 4.6, Brand__c = 'Corsair', 
    Prime_Eligible__c = true, Discount_Percentage__c = 8.4, Category__c = cat4.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'HyperX Pro Gaming Chair',
    Description__c = 'Experience the ultimate quality with this pro gaming chair from HyperX. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 968.44, Stock__c = 330, Rating__c = 4.9, Brand__c = 'HyperX', 
    Prime_Eligible__c = true, Discount_Percentage__c = 24.2, Category__c = cat4.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1606144042871-26eb3e48f58b?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Logitech Mechanical Gaming Mouse',
    Description__c = 'Experience the ultimate quality with this mechanical gaming mouse from Logitech. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 359.55, Stock__c = 356, Rating__c = 4.4, Brand__c = 'Logitech', 
    Prime_Eligible__c = true, Discount_Percentage__c = 21.5, Category__c = cat4.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1598550476439-6847785fcea6?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Razer Wireless Gaming Mouse',
    Description__c = 'Experience the ultimate quality with this wireless gaming mouse from Razer. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 163.19, Stock__c = 31, Rating__c = 4.0, Brand__c = 'Razer', 
    Prime_Eligible__c = true, Discount_Percentage__c = 28.1, Category__c = cat4.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1511512578047-dfb367046420?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'PlayStation RGB Gaming Mouse',
    Description__c = 'Experience the ultimate quality with this rgb gaming mouse from PlayStation. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1058.98, Stock__c = 292, Rating__c = 3.9, Brand__c = 'PlayStation', 
    Prime_Eligible__c = true, Discount_Percentage__c = 27.2, Category__c = cat4.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1606144042871-26eb3e48f58b?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Razer Ergonomic Controller',
    Description__c = 'Experience the ultimate quality with this ergonomic controller from Razer. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 734.96, Stock__c = 58, Rating__c = 4.2, Brand__c = 'Razer', 
    Prime_Eligible__c = true, Discount_Percentage__c = 4.2, Category__c = cat4.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1606144042871-26eb3e48f58b?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'PlayStation Ultra-Light Mechanical Keyboard',
    Description__c = 'Experience the ultimate quality with this ultra-light mechanical keyboard from PlayStation. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 157.89, Stock__c = 183, Rating__c = 4.0, Brand__c = 'PlayStation', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat4.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1511512578047-dfb367046420?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Razer Ultra-Light Headset',
    Description__c = 'Experience the ultimate quality with this ultra-light headset from Razer. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 955.7, Stock__c = 362, Rating__c = 3.8, Brand__c = 'Razer', 
    Prime_Eligible__c = false, Discount_Percentage__c = 7.2, Category__c = cat4.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1511512578047-dfb367046420?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'SteelSeries Ultra-Light Headset',
    Description__c = 'Experience the ultimate quality with this ultra-light headset from SteelSeries. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 310.41, Stock__c = 88, Rating__c = 4.6, Brand__c = 'SteelSeries', 
    Prime_Eligible__c = true, Discount_Percentage__c = 9.7, Category__c = cat4.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Corsair Wireless Controller',
    Description__c = 'Experience the ultimate quality with this wireless controller from Corsair. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 328.27, Stock__c = 13, Rating__c = 4.4, Brand__c = 'Corsair', 
    Prime_Eligible__c = false, Discount_Percentage__c = 15.0, Category__c = cat4.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1598550476439-6847785fcea6?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'PlayStation High-Performance Headset',
    Description__c = 'Experience the ultimate quality with this high-performance headset from PlayStation. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 380.12, Stock__c = 79, Rating__c = 4.1, Brand__c = 'PlayStation', 
    Prime_Eligible__c = true, Discount_Percentage__c = 6.6, Category__c = cat4.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1606144042871-26eb3e48f58b?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Motorola OLED Fold',
    Description__c = 'Experience the ultimate quality with this oled fold from Motorola. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 624.58, Stock__c = 371, Rating__c = 4.4, Brand__c = 'Motorola', 
    Prime_Eligible__c = false, Discount_Percentage__c = 28.5, Category__c = cat5.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1585060544812-6b45742d762f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Samsung 256GB Fold',
    Description__c = 'Experience the ultimate quality with this 256gb fold from Samsung. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1195.46, Stock__c = 477, Rating__c = 4.7, Brand__c = 'Samsung', 
    Prime_Eligible__c = false, Discount_Percentage__c = 27.5, Category__c = cat5.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1533228100845-08145b01de14?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Google 5G Mini',
    Description__c = 'Experience the ultimate quality with this 5g mini from Google. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 641.44, Stock__c = 394, Rating__c = 4.5, Brand__c = 'Google', 
    Prime_Eligible__c = false, Discount_Percentage__c = 5.3, Category__c = cat5.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1533228100845-08145b01de14?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Xiaomi 128GB Smartphone',
    Description__c = 'Experience the ultimate quality with this 128gb smartphone from Xiaomi. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 136.5, Stock__c = 279, Rating__c = 3.5, Brand__c = 'Xiaomi', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat5.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'OnePlus 256GB Plus',
    Description__c = 'Experience the ultimate quality with this 256gb plus from OnePlus. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 104.23, Stock__c = 151, Rating__c = 3.9, Brand__c = 'OnePlus', 
    Prime_Eligible__c = false, Discount_Percentage__c = 24.0, Category__c = cat5.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1605236453806-6ff36851218e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Motorola 5G Ultra',
    Description__c = 'Experience the ultimate quality with this 5g ultra from Motorola. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 130.27, Stock__c = 80, Rating__c = 4.9, Brand__c = 'Motorola', 
    Prime_Eligible__c = false, Discount_Percentage__c = 23.5, Category__c = cat5.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1605236453806-6ff36851218e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Motorola Dual-SIM Ultra',
    Description__c = 'Experience the ultimate quality with this dual-sim ultra from Motorola. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 556.14, Stock__c = 168, Rating__c = 4.5, Brand__c = 'Motorola', 
    Prime_Eligible__c = true, Discount_Percentage__c = 1.2, Category__c = cat5.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1605236453806-6ff36851218e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Google Unlocked Plus',
    Description__c = 'Experience the ultimate quality with this unlocked plus from Google. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 42.92, Stock__c = 307, Rating__c = 4.1, Brand__c = 'Google', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat5.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1533228100845-08145b01de14?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Xiaomi Dual-SIM Plus',
    Description__c = 'Experience the ultimate quality with this dual-sim plus from Xiaomi. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 615.42, Stock__c = 420, Rating__c = 3.7, Brand__c = 'Xiaomi', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat5.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1605236453806-6ff36851218e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Motorola Dual-SIM Smartphone',
    Description__c = 'Experience the ultimate quality with this dual-sim smartphone from Motorola. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 450.58, Stock__c = 163, Rating__c = 3.7, Brand__c = 'Motorola', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat5.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Google 5G Smartphone',
    Description__c = 'Experience the ultimate quality with this 5g smartphone from Google. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 86.42, Stock__c = 468, Rating__c = 4.4, Brand__c = 'Google', 
    Prime_Eligible__c = true, Discount_Percentage__c = 26.0, Category__c = cat5.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Samsung 512GB Ultra',
    Description__c = 'Experience the ultimate quality with this 512gb ultra from Samsung. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 631.89, Stock__c = 23, Rating__c = 3.8, Brand__c = 'Samsung', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat5.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Xiaomi 256GB Smartphone',
    Description__c = 'Experience the ultimate quality with this 256gb smartphone from Xiaomi. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 102.77, Stock__c = 313, Rating__c = 4.1, Brand__c = 'Xiaomi', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat5.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1605236453806-6ff36851218e?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Motorola 5G Plus',
    Description__c = 'Experience the ultimate quality with this 5g plus from Motorola. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 98.61, Stock__c = 127, Rating__c = 3.8, Brand__c = 'Motorola', 
    Prime_Eligible__c = false, Discount_Percentage__c = 20.1, Category__c = cat5.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1585060544812-6b45742d762f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Apple 512GB Ultra',
    Description__c = 'Experience the ultimate quality with this 512gb ultra from Apple. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 1171.15, Stock__c = 90, Rating__c = 3.5, Brand__c = 'Apple', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat5.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1585060544812-6b45742d762f?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Acer 4K Display Gaming Laptop',
    Description__c = 'Experience the ultimate quality with this 4k display gaming laptop from Acer. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 561.25, Stock__c = 239, Rating__c = 4.4, Brand__c = 'Acer', 
    Prime_Eligible__c = true, Discount_Percentage__c = 20.4, Category__c = cat6.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1531297172868-9f140dece06a?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Acer M2 Chip Creator Laptop',
    Description__c = 'Experience the ultimate quality with this m2 chip creator laptop from Acer. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 664.49, Stock__c = 111, Rating__c = 4.3, Brand__c = 'Acer', 
    Prime_Eligible__c = false, Discount_Percentage__c = 0, Category__c = cat6.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'HP 15-inch Creator Laptop',
    Description__c = 'Experience the ultimate quality with this 15-inch creator laptop from HP. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 681.01, Stock__c = 419, Rating__c = 3.8, Brand__c = 'HP', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat6.Id, Delivery_Time__c = 4,
    Image_URL__c = 'https://images.unsplash.com/photo-1531297172868-9f140dece06a?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'HP Touchscreen Chromebook',
    Description__c = 'Experience the ultimate quality with this touchscreen chromebook from HP. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 331.17, Stock__c = 366, Rating__c = 4.0, Brand__c = 'HP', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat6.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Lenovo i7 Processor 2-in-1 Convertible',
    Description__c = 'Experience the ultimate quality with this i7 processor 2-in-1 convertible from Lenovo. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 174.03, Stock__c = 307, Rating__c = 3.8, Brand__c = 'Lenovo', 
    Prime_Eligible__c = true, Discount_Percentage__c = 17.7, Category__c = cat6.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Lenovo M2 Chip Ultrabook',
    Description__c = 'Experience the ultimate quality with this m2 chip ultrabook from Lenovo. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 621.03, Stock__c = 500, Rating__c = 4.7, Brand__c = 'Lenovo', 
    Prime_Eligible__c = false, Discount_Percentage__c = 23.8, Category__c = cat6.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Microsoft 15-inch Ultrabook',
    Description__c = 'Experience the ultimate quality with this 15-inch ultrabook from Microsoft. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 347.42, Stock__c = 12, Rating__c = 3.7, Brand__c = 'Microsoft', 
    Prime_Eligible__c = true, Discount_Percentage__c = 26.1, Category__c = cat6.Id, Delivery_Time__c = 2,
    Image_URL__c = 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'ASUS M2 Chip Business Laptop',
    Description__c = 'Experience the ultimate quality with this m2 chip business laptop from ASUS. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 797.56, Stock__c = 111, Rating__c = 4.3, Brand__c = 'ASUS', 
    Prime_Eligible__c = true, Discount_Percentage__c = 21.1, Category__c = cat6.Id, Delivery_Time__c = 5,
    Image_URL__c = 'https://images.unsplash.com/photo-1531297172868-9f140dece06a?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Lenovo 13-inch Gaming Laptop',
    Description__c = 'Experience the ultimate quality with this 13-inch gaming laptop from Lenovo. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 157.99, Stock__c = 321, Rating__c = 3.8, Brand__c = 'Lenovo', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat6.Id, Delivery_Time__c = 3,
    Image_URL__c = 'https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?auto=format&fit=crop&w=500&q=80'
));
products.add(new Product__c(
    Name = 'Microsoft M2 Chip Ultrabook',
    Description__c = 'Experience the ultimate quality with this m2 chip ultrabook from Microsoft. Designed for everyday use and maximum performance. Get yours today and elevate your lifestyle.',
    Price__c = 424.74, Stock__c = 468, Rating__c = 4.0, Brand__c = 'Microsoft', 
    Prime_Eligible__c = true, Discount_Percentage__c = 0, Category__c = cat6.Id, Delivery_Time__c = 1,
    Image_URL__c = 'https://images.unsplash.com/photo-1531297172868-9f140dece06a?auto=format&fit=crop&w=500&q=80'
));

insert products;
System.debug('100 Products Generated Successfully!');
