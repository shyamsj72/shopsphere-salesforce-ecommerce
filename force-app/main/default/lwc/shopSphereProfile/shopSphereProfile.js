import { LightningElement, api, wire, track } from 'lwc';
import getOrderHistory from '@salesforce/apex/ShopSphereUserController.getOrderHistory';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ShopSphereProfile extends LightningElement {
    @api customerId;
    @track orders = [];
    @track showTrackingModal = false;
    @track trackingOrder = {};
    @track activeTab = 'Orders';

    get isOrdersTab() { return this.activeTab === 'Orders'; }
    get tabClassOrders() { return this.activeTab === 'Orders' ? 'tab active' : 'tab'; }
    get tabClassBuyAgain() { return this.activeTab === 'BuyAgain' ? 'tab active' : 'tab'; }
    get tabClassNotShipped() { return this.activeTab === 'NotShipped' ? 'tab active' : 'tab'; }
    get tabClassCancelled() { return this.activeTab === 'Cancelled' ? 'tab active' : 'tab'; }
    
    get activeTabDisplay() {
        if(this.activeTab === 'BuyAgain') return 'Buy Again';
        if(this.activeTab === 'NotShipped') return 'Not Yet Shipped';
        if(this.activeTab === 'Cancelled') return 'Cancelled Orders';
        return 'Orders';
    }

    handleTabChange(event) {
        this.activeTab = event.currentTarget.dataset.tab;
    }

    connectedCallback() {
        if(this.customerId) {
            getOrderHistory({ customerId: this.customerId })
                .then(result => {
                    this.orders = result;
                })
                .catch(error => {
                    console.error(error);
                });
        }
    }

    get noOrders() {
        return this.orders && this.orders.length === 0;
    }

    get processedOrders() {
        if(!this.orders) return [];
        return this.orders.map(order => {
            const date = new Date(order.CreatedDate);
            const formattedDate = date.toLocaleDateString('en-US', { day: 'numeric', month: 'long', year: 'numeric' });
            
            // Simulate delivery status based on time created (mock)
            const hoursSince = (new Date() - date) / (1000 * 60 * 60);
            let deliveryStatus = 'Pending';
            let progress = 0;
            
            if(hoursSince < 1) {
                deliveryStatus = 'Ordered today';
                progress = 10;
            } else if(hoursSince < 12) {
                deliveryStatus = 'Shipped';
                progress = 45;
            } else if(hoursSince < 24) {
                deliveryStatus = 'Out for delivery';
                progress = 75;
            } else {
                deliveryStatus = 'Delivered';
                progress = 100;
            }
            
            return {
                ...order,
                formattedDate,
                deliveryStatus,
                progressStyle: `width: ${progress}%; background: ${progress === 100 ? '#007600' : '#ffa41c'};`,
                step1Class: `step-dot ${progress >= 10 ? 'completed' : ''}`,
                step2Class: `step-dot ${progress >= 45 ? 'completed' : ''}`,
                step3Class: `step-dot ${progress >= 75 ? 'completed' : ''}`,
                step4Class: `step-dot ${progress === 100 ? 'completed' : ''}`
            };
        });
    }

    goShopping() {
        this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'home' } }));
    }
    
    openTracking(event) {
        const orderId = event.target.dataset.id;
        this.trackingOrder = this.processedOrders.find(o => o.Id === orderId);
        this.showTrackingModal = true;
    }
    
    closeTracking() {
        this.showTrackingModal = false;
    }
    
    downloadInvoice(event) {
        const orderId = event.target.dataset.id;
        window.open(`/apex/ShopSphereInvoice?id=${orderId}`, '_blank');
    }
    
    handleReturn() {
        this.dispatchEvent(new ShowToastEvent({
            title: 'Returns & Replacements',
            message: 'Your return request has been initiated. A shipping label will be emailed to you.',
            variant: 'success'
        }));
    }
    
    handleShare() {
        this.dispatchEvent(new ShowToastEvent({
            title: 'Share Gift Receipt',
            message: 'Gift receipt link copied to clipboard!',
            variant: 'info'
        }));
    }
    
    handleReview() {
        this.dispatchEvent(new ShowToastEvent({
            title: 'Product Review',
            message: 'Thank you for reviewing! Your feedback has been submitted successfully.',
            variant: 'success'
        }));
    }
}
