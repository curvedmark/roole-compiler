assert = require './assert'

test "compile type selector", ->
	assert.compileTo '''
		body {}
	''', '''
		body {}
	'''

test "compile class selector", ->
	assert.compileTo '''
		.foo {}
	''', '''
		.foo {}
	'''

test "compile hash selector", ->
	assert.compileTo '''
		#foo {}
	''', '''
		#foo {}
	'''

test "compile attribute selector", ->
	assert.compileTo '''
		[attr=val] {}
	''', '''
		[attr=val] {}
	'''

test "compile quoted attribute selector", ->
	assert.compileTo '''
		[attr='val'] {}
	''', '''
		[attr='val'] {}
	'''

test "compile attribute selector with dash", ->
	assert.compileTo '''
		[attr|=val] {}
	''', '''
		[attr|=val] {}
	'''

test "compile attribute selector without value", ->
	assert.compileTo '''
		[attr] {}
	''', '''
		[attr] {}
	'''

test "compile pseudo selector", ->
	assert.compileTo '''
		:first-child {}
	''', '''
		:first-child {}
	'''

test "compile pseudo selector with double colons", ->
	assert.compileTo '''
		::before {}
	''', '''
		::before {}
	'''

test "compile function-like pseudo selector", ->
	assert.compileTo '''
		:nth-child(2n + 2) {}
	''', '''
		:nth-child(2n+2) {}
	'''

test "compile function-like pseudo selector", ->
	assert.compileTo '''
		:nth-child(2n + 2) {}
	''', '''
		:nth-child(2n+2) {}
	'''

test "compile function-like pseudo selector", ->
	assert.compileTo '''
		:nth-child(2n + 2) {}
	''', '''
		:nth-child(2n+2) {}
	'''

test "compile negation selector", ->
	assert.compileTo '''
		:not(body) {}
	''', '''
		:not(body) {}
	'''

test "compile negation selector negating function-like pseudo selector", ->
	assert.compileTo '''
		:not(:nth-child(2n - 1)) {}
	''', '''
		:not(:nth-child(2n-1)) {}
	'''

test "compile universal selector", ->
	assert.compileTo '''
		* {}
	''', '''
		* {}
	'''

test "compile compund selector", ->
	assert.compileTo '''
		li:first-child {}
	''', '''
		li:first-child {}
	'''

test "compile complex selector", ->
	assert.compileTo '''
		body div {}
	''', '''
		body div {}
	'''

test "compile complex selector with child selector", ->
	assert.compileTo '''
		body > div {}
	''', '''
		body > div {}
	'''

test "compile selector list", ->
	assert.compileTo '''
		body,div {}
	''', '''
		body,
		div {}
	'''