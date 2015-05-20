var htjs = require('.');
var form = htjs('form', {method: 'POST', action: '.'}, [
	htjs('input', {type: 'text', name: 'username'}),
	htjs('input', {type: 'password', name: 'password'}),
	htjs('input', {type: 'submit'}),
]);
window.addEventListener('DOMContentLoaded', function(event) {
	document.body.appendChild(form);
});
