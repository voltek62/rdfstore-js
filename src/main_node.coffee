requirejs = require 'requirejs'

requirejs.config ->
	baseUrl: __dirname
	nodeRequire: require

requirejs ['./sparql/parser'], (parser)->
	results = parser.parse("SELECT * { ?s ?p ?o }")
	console.log results