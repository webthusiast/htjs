module.exports = $ = (element, attributes={}, childNodes=[]) ->
	if not element?
		# return a text node
		document.createTextNode attributes
	else if typeof element is 'string'
		$ document.createElement(element), attributes, childNodes
	else if element instanceof HTMLElement
		# return an element node
		if typeof attributes == 'string' or attributes instanceof Array
			return $ element, {}, attributes
		Object.keys(attributes).forEach (key) ->
			if attributes[key]? then element.setAttribute key, attributes[key]
			else element.removeAttribute key
		childNodes = [$ null, childNodes] if typeof childNodes is 'string'
		childNodes.forEach (childNode) ->
			element.appendChild childNode
		element
	else if element instanceof Array
		# return a document fragment
		childNodes = element
		result = document.createDocumentFragment()
		childNodes.forEach (childNode) ->
			result.appendChild childNode
		result
