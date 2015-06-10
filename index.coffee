module.exports = htjs = (tagName, attributes={}, childNodes=[]) ->
	if not tagName?
		# return a text node
		document.createTextNode attributes
	else if typeof tagName is 'string'
		# return an element node
		if typeof attributes == 'string' or attributes instanceof Array
			return htjs tagName, {}, attributes
		result = document.createElement tagName
		Object.keys(attributes).forEach (key) ->
			result.setAttribute key, attributes[key] if attributes[key]?
		childNodes = [htjs null, childNodes] if typeof childNodes is 'string'
		childNodes.forEach (el) ->
			result.appendChild el
		result
	else
		# return an document fragment
		childNodes = tagName
		result = document.createDocumentFragment()
		childNodes.forEach (el) ->
			result.appendChild el
		result
