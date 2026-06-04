import { LightningElement, track, api } from 'lwc';
import getCart from '@salesforce/apex/ShopSphereCartController.getCart';
import checkout from '@salesforce/apex/ShopSphereCartController.checkout';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ShopSphereCheckout extends LightningElement {
    @track cart;
    @api customerId;
    @track cartItems = [];
    address = '123 Cloud Street, Salesforce City, SF 94105';
    paymentMethod = 'Credit Card';
    isLoading = false;

    get paymentOptions() {
        return [
            { label: 'Credit Card', value: 'Credit Card' },
            { label: 'PayPal', value: 'PayPal' },
            { label: 'Cash on Delivery', value: 'Cash on Delivery' }
        ];
    }

    connectedCallback() {
        getCart({ customerId: this.customerId })
            .then(result => {
                this.cart = result;
                this.cartItems = result.Cart_Items__r || [];
            })
            .catch(error => console.error(error));
    }

    get totalItems() {
        return this.cartItems.reduce((total, item) => total + item.Quantity__c, 0);
    }

    get totalAmount() {
        return this.cart ? this.cart.Total_Amount__c : 0;
    }

    handleAddressChange(event) { this.address = event.target.value; }
    handlePaymentChange(event) { this.paymentMethod = event.target.value; }

    handlePlaceOrder() {
        if(!this.address) {
            this.dispatchEvent(new ShowToastEvent({ title: 'Error', message: 'Address is required', variant: 'error' }));
            return;
        }
        
        this.isLoading = true;
        checkout({ customerId: this.customerId, deliveryAddress: this.address, paymentMethod: this.paymentMethod })
            .then(orderId => {
                this.dispatchEvent(new ShowToastEvent({ title: 'Success', message: 'Order placed successfully!', variant: 'success' }));
                this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'profile' } }));
            })
            .catch(error => {
                this.dispatchEvent(new ShowToastEvent({ title: 'Error', message: error.body.message, variant: 'error' }));
            })
            .finally(() => { this.isLoading = false; });
    }
}