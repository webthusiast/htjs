var $ = require('.');
var inputs = $([
	$('input', {type: 'text', name: 'username'}),
	$('input', {type: 'password', name: 'password'}),
	$('input', {type: 'submit'}),
]);
var form = $('form', {method: 'POST', action: '.'}, [
	$('div', {}, [
		$(null, 'Fill out this form'),
	]),
	$('hr', {hidden: null}),
	inputs,
]);
window.addEventListener('DOMContentLoaded', function(event) {
	document.body.appendChild(form);
});
