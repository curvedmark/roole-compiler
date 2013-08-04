assert = require './assert'

test "compile @import", ->
	assert.compileTo '''
		@import url(http://example.com);
	''', '''
		@import url(http://example.com);
	'''

test "compile @import with media query", ->
	assert.compileTo '''
		@import 'foo' screen;
	''', '''
		@import 'foo' screen;
	'''