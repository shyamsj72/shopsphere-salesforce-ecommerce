
import { LightningElement, api } from 'lwc';
export default class ShopSphereProductCard extends LightningElement {
    @api product;
    
    get stars() {
        if(!this.product) return [];
        let r = this.product.Rating__c || 0;
        let arr = [];
        for(let i=1; i<=5; i++) {
            arr.push({ id: i, class: i <= Math.round(r) ? 'star-filled' : 'star-empty' });
        }
        return arr;
    }

    handleClick() {
        this.dispatchEvent(new CustomEvent('productclick', { detail: { productId: this.product.Id } }));
    }
}
