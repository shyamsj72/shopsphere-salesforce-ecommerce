import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export const showToast = (context, title, message, variant) => {
    const event = new ShowToastEvent({
        title: title,
        message: message,
        variant: variant,
    });
    context.dispatchEvent(event);
};

export const handleError = (context, error) => {
    let message = 'Unknown error';
    if (Array.isArray(error.body)) {
        message = error.body.map(e => e.message).join(', ');
    } else if (typeof error.body === 'string') {
        message = error.body;
    } else if (error.body && error.body.message) {
        message = error.body.message;
    } else if (error.message) {
        message = error.message;
    }
    showToast(context, 'Error', message, 'error');
};

export const CONSTANTS = {
    DEFAULT_ERROR_MSG: 'Something went wrong. Please try again.',
    CURRENCY_SYMBOL: '₹'
};