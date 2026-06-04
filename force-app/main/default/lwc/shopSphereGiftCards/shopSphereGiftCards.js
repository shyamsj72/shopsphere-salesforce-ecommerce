import { LightningElement } from 'lwc';
import { showToast } from 'c/shopSphereUtils';
export default class ShopSphereGiftCards extends LightningElement {
    handleAction() {
        showToast(this, 'Gift Card Applied', 'This functionality is mocked for the portfolio.', 'success');
    }
}