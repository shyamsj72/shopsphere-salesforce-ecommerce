
import { LightningElement, track } from 'lwc';
import login from '@salesforce/apex/ShopSphereAuthController.login';
import register from '@salesforce/apex/ShopSphereAuthController.register';
import { showToast } from 'c/shopSphereUtils';

export default class ShopSphereLogin extends LightningElement {
    @track isRegister = false;
    name = '';
    email = '';
    password = '';

    get modeTitle() { return this.isRegister ? 'Create Account' : 'Sign in'; }
    get toggleText() { return this.isRegister ? 'Already have an account?' : 'New to ShopSphere?'; }
    get toggleBtnText() { return this.isRegister ? 'Sign in' : 'Create your ShopSphere account'; }

    handleName(e) { this.name = e.target.value; }
    handleEmail(e) { this.email = e.target.value; }
    handlePassword(e) { this.password = e.target.value; }
    toggleMode() { this.isRegister = !this.isRegister; }

    handleSubmit() {
        if(!this.email || !this.password) {
            showToast(this, 'Error', 'Please enter your email and password.', 'error');
            return;
        }

        if(this.isRegister) {
            register({ name: this.name, email: this.email, password: this.password })
                .then(customerId => {
                    showToast(this, 'Success', 'Account created successfully!', 'success');
                    this.dispatchEvent(new CustomEvent('login', { detail: { customerId, name: this.name } }));
                })
                .catch(err => showToast(this, 'Error', err.body.message, 'error'));
        } else {
            login({ email: this.email, password: this.password })
                .then(customerId => {
                    showToast(this, 'Success', 'Signed in successfully!', 'success');
                    this.dispatchEvent(new CustomEvent('login', { detail: { customerId, name: this.email.split('@')[0] } }));
                })
                .catch(err => showToast(this, 'Error', err.body.message, 'error'));
        }
    }
}
