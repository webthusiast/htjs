module.exports = (tagName, attributes={}, childNodes=[]) ->
	return document.createTextNode attributes if not tagName?
	result = document.createElement tagName
	Object.keys(attributes).forEach (key) ->
		result.setAttribute key, attributes[key]
	childNodes.forEach (el) ->
		result.appendChild el
	result
