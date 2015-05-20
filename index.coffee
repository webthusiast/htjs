module.exports = (tagName, attributes={}, childNodes=[]) ->
	result = document.createElement tagName
	Object.keys(attributes).forEach (key) ->
		result.setAttribute key, attributes[key]
	childNodes.forEach (el) ->
		result.appendChild el
	result
