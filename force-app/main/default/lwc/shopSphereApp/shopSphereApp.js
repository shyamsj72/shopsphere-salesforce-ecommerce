import { LightningElement, track, wire } from 'lwc';
import getCart from '@salesforce/apex/ShopSphereCartController.getCart';
import addToCart from '@salesforce/apex/ShopSphereCartController.addToCart';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ShopSphereApp extends LightningElement {
    @track currentView = 'login';
    customerId = null;
    customerName = '';
    @track currentCategoryId = '';
    @track currentProductId = '';
    @track currentSearchTerm = '';
    @track cartItemCount = 0;
    @track isLoading = false;

    connectedCallback() {
        this.fetchCart();
    }

    fetchCart() {
        getCart({ customerId: this.customerId })
            .then(result => {
                if(result && result.Cart_Items__r) {
                    this.cartItemCount = result.Cart_Items__r.reduce((total, item) => total + item.Quantity__c, 0);
                } else {
                    this.cartItemCount = 0;
                }
            })
            .catch(error => console.error('Error fetching cart', error));
    }

    get isLoginView() { return !this.customerId; }
    get isHome() { return this.currentView === 'home' && this.customerId; }
    get isProductList() { return this.currentView === 'list' && this.customerId; }
    get isProductDetail() { return this.currentView === 'detail' && this.customerId; }
    get isCart() { return this.currentView === 'cart' && this.customerId; }
    get isCheckout() { return this.currentView === 'checkout' && this.customerId; }
    get isProfile() { return this.currentView === 'profile' && this.customerId; }
    get isCustomerService() { return this.currentView === 'customerservice' && this.customerId; }
    get isRegistry() { return this.currentView === 'registry' && this.customerId; }
    get isGiftCards() { return this.currentView === 'giftcards' && this.customerId; }
    get isSell() { return this.currentView === 'sell' && this.customerId; }

    handleLogin(event) {
        this.customerId = event.detail.customerId;
        this.customerName = event.detail.name;
        this.currentView = 'home';
    }

    handleNavigate(event) {
        const detail = event.detail;
        this.currentView = detail.view;
        this.currentCategoryId = detail.categoryId || '';
        this.currentProductId = detail.productId || '';
        if(this.currentView === 'cart') this.fetchCart();
        window.scrollTo(0, 0);
    }

    handleSearch(event) {
        this.currentSearchTerm = event.detail.searchTerm;
        this.currentCategoryId = event.detail.categoryId || '';
        this.currentView = 'list';
        window.scrollTo(0, 0);
    }

    handleAddToCart(event) {
        this.isLoading = true;
        const productId = event.detail.productId;
        const quantity = event.detail.quantity || 1;
        addToCart({ customerId: this.customerId, productId: productId, quantity: quantity })
            .then(() => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Added to Cart',
                    message: 'Item added successfully',
                    variant: 'success'
                }));
                this.fetchCart();
            })
            .catch(error => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Error',
                    message: error.body ? error.body.message : 'Unknown error',
                    variant: 'error'
                }));
            })
            .finally(() => {
                this.isLoading = false;
            });
    }
}