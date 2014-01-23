require '../helper'
requirejs = require 'requirejs'
parser = require '../../src/sparql/parser'

exports.testSimpleParsing = (test) ->
	results = parser.parse "SELECT * { ?s ?p ?o }"
	console.log results
	test.done
	
