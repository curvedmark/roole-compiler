assert = require './assert'

test "compile empty input", ->
	assert.compileTo '', ''

test "compile @font-face", ->
	assert.compileTo '''
		@font-face {}
	''', '''
		@font-face {}
	'''

test "compile @charset", ->
	assert.compileTo '''
		@charset 'UTF-8';
	''', '''
		@charset 'UTF-8';
	'''