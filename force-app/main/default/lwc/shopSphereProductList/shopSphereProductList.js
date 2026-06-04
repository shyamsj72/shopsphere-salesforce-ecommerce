
import { LightningElement, api, wire, track } from 'lwc';
import getProducts from '@salesforce/apex/ShopSphereController.getProducts';
import { showToast } from 'c/shopSphereUtils';

export default class ShopSphereProductList extends LightningElement {
    get skeletonList() { return [1,2,3,4,5,6]; }
    @api categoryId;
    @api searchTerm;
    @track products;
    
    viewMode = 'grid'; // or 'list'

    @wire(getProducts, { categoryId: '$categoryId', searchTerm: '$searchTerm' })
    wiredProds({ data }) { if(data) this.products = data; }

    get searchTermText() { return this.searchTerm ? `for "${this.searchTerm}"` : ''; }
    
    get containerClass() { return this.viewMode === 'grid' ? 'slds-grid slds-wrap' : 'slds-grid slds-wrap list-view-container'; }
    get itemClass() { return this.viewMode === 'grid' ? 'slds-col slds-size_1-of-1 slds-medium-size_1-of-3 slds-large-size_1-of-4 slds-p-around_x-small' : 'slds-col slds-size_1-of-1 slds-p-around_x-small'; }
    
    get gridIconClass() { return this.viewMode === 'grid' ? 'active-view' : 'inactive-view'; }
    get listIconClass() { return this.viewMode === 'list' ? 'active-view slds-m-left_small' : 'inactive-view slds-m-left_small'; }

    setGrid() { this.viewMode = 'grid'; }
    setList() { this.viewMode = 'list'; }

    handleProductClick(e) { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'detail', productId: e.detail.productId } })); }
    
    handleNotImplemented() { showToast(this, 'Coming Soon', 'Filtering functionality is under development.', 'info'); }
}
