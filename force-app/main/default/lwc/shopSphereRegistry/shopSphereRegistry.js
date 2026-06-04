import { LightningElement } from 'lwc';
import { showToast } from 'c/shopSphereUtils';
export default class ShopSphereRegistry extends LightningElement {
    handleAction() {
        showToast(this, 'Registry Portal', 'The Registry management backend is currently under construction.', 'success');
    }
}