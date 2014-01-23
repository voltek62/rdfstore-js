require '../helper'
requirejs = require 'requirejs'
parser = requirejs './src/sparql/parser'

exports.testSimpleParsing = (test) ->
	results = parser.parse "SELECT * { ?s ?p ?o }"
	test.ok results?
	test.ok results.token is 'query'
	test.ok results.units[0].kind is 'select'
	test.done()

exports.testSimpleParsingCaseInsensitive = (test) ->
	results = parser.parse "SeLeCT * { ?s ?p ?o }"
	test.ok results?
	test.ok results.token is 'query'
	test.ok results.units[0].kind is 'select'
	test.done()
	
