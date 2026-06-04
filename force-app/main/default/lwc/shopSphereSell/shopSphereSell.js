import { LightningElement } from 'lwc';
import { showToast } from 'c/shopSphereUtils';
export default class ShopSphereSell extends LightningElement {
    handleAction() {
        showToast(this, 'Seller Portal', 'Seller onboarding is not available in the demo environment.', 'info');
    }
}