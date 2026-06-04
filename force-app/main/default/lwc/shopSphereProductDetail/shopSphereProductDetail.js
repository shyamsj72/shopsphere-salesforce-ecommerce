
import { LightningElement, api, wire } from 'lwc';
import getProductDetails from '@salesforce/apex/ShopSphereController.getProductDetails';
import getTrendingProducts from '@salesforce/apex/ShopSphereController.getTrendingProducts';
import addToCartApex from '@salesforce/apex/ShopSphereCartController.addToCart';
import { showToast } from 'c/shopSphereUtils';

export default class ShopSphereProductDetail extends LightningElement {
    @api productId;
    product;
    quantity = 1;
    @api customerId;

    @wire(getProductDetails, { productId: '$productId' })
    wiredProd({ data }) {
        if(data) {
            this.product = data;
            this.selectedImage = null;
        }
    }

    handleProductClick(event) {
        this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'detail', productId: event.detail.productId } }));
    }

    get stars() {
        if(!this.product) return [];
        let r = this.product.Rating__c || 0;
        let arr = [];
        for(let i=1; i<=5; i++) arr.push({ id: i, class: i <= Math.round(r) ? 'star-filled' : 'star-empty' });
        return arr;
    }

    get fbtTotal() { return this.product ? this.product.Price__c + 1299 : 0; }

    @wire(getTrendingProducts) trendingProducts;

    get activeImage() {
        return this.selectedImage || (this.product ? this.product.Image_URL__c : '');
    }

    selectedImage = null;

    get thumbnails() {
        if(!this.product) return [];
        return [
            { id: 1, url: this.product.Image_URL__c, class: this.selectedImage == null || this.selectedImage == this.product.Image_URL__c ? 'thumbnail-img active-thumb' : 'thumbnail-img' },
            { id: 2, url: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80', class: this.selectedImage == 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80' ? 'thumbnail-img active-thumb' : 'thumbnail-img' },
            { id: 3, url: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&q=80', class: this.selectedImage == 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&q=80' ? 'thumbnail-img active-thumb' : 'thumbnail-img' }
        ];
    }

    handleThumbClick(event) {
        this.selectedImage = event.target.dataset.url;
    }


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
