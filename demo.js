var $ = require('.');
var form = $('form', {method: 'POST', action: '.'}, [
	$('div', {}, [
		$(null, 'Fill out this form'),
	]),
	$('hr'),
	$('input', {type: 'text', name: 'username'}),
	$('input', {type: 'password', name: 'password'}),
	$('input', {type: 'submit'}),
]);
window.addEventListener('DOMContentLoaded', function(event) {
	document.body.appendChild(form);
});
