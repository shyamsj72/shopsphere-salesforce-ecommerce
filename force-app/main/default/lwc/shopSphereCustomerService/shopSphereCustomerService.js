import { LightningElement } from 'lwc';
import { showToast } from 'c/shopSphereUtils';
export default class ShopSphereCustomerService extends LightningElement {
    handleAction() {
        showToast(this, 'Customer Service', 'This action will be handled by Agentforce AI in the future.', 'info');
    }
}