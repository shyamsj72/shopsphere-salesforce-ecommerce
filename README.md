# ShopSphere Salesforce App
A production-quality Amazon-inspired ecommerce application built on Salesforce using LWC and Apex.

## Setup Instructions
1. Authenticate with your dev hub: `sf org login web -d -a DevHub`
2. Create a scratch org or deploy to your org: `sf project deploy start`
3. Assign Permission Set: `sf org assign permset -n ShopSphere_User`
4. Run sample data script via Anonymous Apex: `sf apex run -f scripts/apex/hello.apex`