`htjs`
======

A simple internal DSL for constructing HTML with JS.


Usage
-----

	$ npm install htjs

And

	var htjs = require('htjs');
	var form = htjs('form', {method: 'POST', action: '.'}, [
		htjs('input', {type: 'text', name: 'username'}),
		htjs('input', {type: 'password', name: 'password'}),
		htjs('input', {type: 'submit'}),
	]);
	element.appendChild(form);
