task 'build:parser', 'rebuilds the SPARQL parser', (options) ->
	PEG = require 'pegjs'
	fs = require 'fs'
	outputPath = './src/sparql/parser.js'
	parserCode = fs.readFileSync './assets/sparql_query.pegjs'
	outputParserCode = PEG.buildParser parserCode.toString('utf-8'),
						output: 'source',
						optimize: 'size'
	fs.unlinkSync outputPath if fs.existsSync(outputPath)
	outputParserCode = "define([],function(){\n return #{outputParserCode} });"
	fs.writeFileSync outputPath,outputParserCode