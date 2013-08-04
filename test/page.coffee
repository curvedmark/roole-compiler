assert = require './assert'

test "compile @page", ->
	assert.compileTo '''
		@page {}
	''', '''
		@page {}
	'''

test "compile @page with selector", ->
	assert.compileTo '''
		@page :left {}
	''', '''
		@page :left {}
	'''