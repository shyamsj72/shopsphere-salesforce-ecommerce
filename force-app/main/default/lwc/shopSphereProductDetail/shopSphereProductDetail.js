
import { LightningElement, api, wire } from 'lwc';
import getProductDetails from '@salesforce/apex/ShopSphereController.getProductDetails';
import addToCartApex from '@salesforce/apex/ShopSphereCartController.addToCart';
import { showToast } from 'c/shopSphereUtils';

export default class ShopSphereProductDetail extends LightningElement {
    @api productId;
    product;
    quantity = 1;
    @api customerId;

    @wire(getProductDetails, { productId: '$productId' })
    wiredProd({ data }) {
        if(data) this.product = data;
    }

    get stars() {
        if(!this.product) return [];
        let r = this.product.Rating__c || 0;
        let arr = [];
        for(let i=1; i<=5; i++) arr.push({ id: i, class: i <= Math.round(r) ? 'star-filled' : 'star-empty' });
        return arr;
    }

    get fbtTotal() { return this.product ? this.product.Price__c + 1299 : 0; }

    goBack() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'home' } })); }
    handleQtyChange(e) { this.quantity = parseInt(e.target.value, 10); }

    addToCart() {
        addToCartApex({ customerId: this.customerId, productId: this.productId, quantity: this.quantity })
            .then(() => {
                showToast(this, 'Added to Cart', `${this.product.Name} added successfully.`, 'success');
                this.dispatchEvent(new CustomEvent('cartupdate'));
            })
            .catch(err => console.error(err));
    }

    buyNow() {
        addToCartApex({ customerId: this.customerId, productId: this.productId, quantity: this.quantity })
            .then(() => {
                this.dispatchEvent(new CustomEvent('cartupdate'));
                this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'checkout' } }));
            })
            .catch(err => console.error(err));
    }
}
