import { LightningElement, track, api } from 'lwc';
import getCart from '@salesforce/apex/ShopSphereCartController.getCart';
import updateCartItem from '@salesforce/apex/ShopSphereCartController.updateCartItem';

export default class ShopSphereCart extends LightningElement {
    @track cart;
    @api customerId;
    @track cartItems = [];

    connectedCallback() {
        this.fetchCart();
    }

    fetchCart() {
        getCart({ customerId: this.customerId })
            .then(result => {
                this.cart = result;
                this.cartItems = result.Cart_Items__r || [];
            })
            .catch(error => console.error(error));
    }

    get isEmpty() {
        return this.cartItems.length === 0;
    }

    get totalItems() {
        return this.cartItems.reduce((total, item) => total + item.Quantity__c, 0);
    }

    get totalAmount() {
        return this.cart ? this.cart.Total_Amount__c : 0;
    }

    handleQuantityChange(event) {
        const itemId = event.target.dataset.id;
        const qty = parseInt(event.target.value, 10);
        this.updateItem(itemId, qty);
    }

    handleDelete(event) {
        const itemId = event.currentTarget.dataset.id;
        this.updateItem(itemId, 0);
    }

    updateItem(itemId, qty) {
        updateCartItem({ cartItemId: itemId, quantity: qty })
            .then(() => this.fetchCart())
            .catch(error => console.error(error));
    }

    goShopping() {
        this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'home' } }));
    }

    proceedToCheckout() {
        this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'checkout' } }));
    }
}