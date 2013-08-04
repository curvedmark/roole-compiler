assert = require './assert'

test "compile media type", ->
	assert.compileTo '''
		@media screen {}
	''', '''
		@media screen {}
	'''

test "compile media type with modifier", ->
	assert.compileTo '''
		@media not screen {}
	''', '''
		@media not screen {}
	'''

test "compile media feature", ->
	assert.compileTo '''
		@media (orientation: portrait) {}
	''', '''
		@media (orientation: portrait) {}
	'''

test "compile media feature without value", ->
	assert.compileTo '''
		@media (color) {}
	''', '''
		@media (color) {}
	'''

test "compile complex media query", ->
	assert.compileTo '''
		@media all and (min-width: 500px) {}
	''', '''
		@media all and (min-width: 500px) {}
	'''

test "compile media query list", ->
	assert.compileTo '''
		@media all, not screen {}
	''', '''
		@media
		all,
		not screen {}
	'''