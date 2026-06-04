import { LightningElement, api, wire, track } from 'lwc';
import getCategories from '@salesforce/apex/ShopSphereController.getCategories';
import getSearchSuggestions from '@salesforce/apex/ShopSphereController.getSearchSuggestions';
import { showToast } from 'c/shopSphereUtils';

export default class ShopSphereHeader extends LightningElement {
    @api cartCount = 0;
    @api customerName = "";
    get displayName() { return this.customerName || "sign in"; }
    @track categories = [];
    @track suggestions = [];
    selectedCategory = '';
    searchTerm = '';
    showSuggestions = false;
    searchTimeout;

    @wire(getCategories)
    wiredCategories({ error, data }) {
        if (data) this.categories = data;
    }

    goHome() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'home' } })); }
    goCart() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'cart' } })); }
    goProfile() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'profile' } })); }
    goDeals() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'list' } })); }

    goCustomerService() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'customerservice' } })); }
    goRegistry() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'registry' } })); }
    goGiftCards() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'giftcards' } })); }
    goSell() { this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'sell' } })); }
    handleNotImplemented() { /* Fallback */ }

    handleCategoryChange(event) { this.selectedCategory = event.target.value; }

    handleSearchInput(event) {
        this.searchTerm = event.target.value;
        if(this.searchTimeout) clearTimeout(this.searchTimeout);
        
        if(this.searchTerm.length > 2) {
            this.searchTimeout = setTimeout(() => {
                getSearchSuggestions({ searchTerm: this.searchTerm })
                    .then(result => {
                        this.suggestions = result;
                        this.showSuggestions = result.length > 0;
                    })
                    .catch(e => console.error(e));
            }, 300); // debounce
        } else {
            this.showSuggestions = false;
        }
    }

    handleSearchBlur() {
        // slight delay to allow click event on suggestion to fire
        setTimeout(() => { this.showSuggestions = false; }, 200);
    }

    handleSuggestionClick(event) {
        const prodId = event.currentTarget.dataset.id;
        this.showSuggestions = false;
        this.dispatchEvent(new CustomEvent('navigate', { detail: { view: 'detail', productId: prodId } }));
    }

    handleSearchKeyUp(event) {
        if(event.key === 'Enter') this.executeSearch();
    }

    executeSearch() {
        this.showSuggestions = false;
        this.dispatchEvent(new CustomEvent('search', { detail: { categoryId: this.selectedCategory, searchTerm: this.searchTerm } }));
    }
}