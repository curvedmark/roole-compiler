assert = require './assert'

suite 'value'

test "number", ->
	assert.compileTo '''
		body { margin: 0 }
	''', '''
		body {
			margin: 0;
		}
	'''

test "fraction number", ->
	assert.compileTo '''
		body { margin: 0.2 }
	''', '''
		body {
			margin: 0.2;
		}
	'''

test "fraction number without whole part", ->
	assert.compileTo '''
		body { margin: .2 }
	''', '''
		body {
			margin: 0.2;
		}
	'''

test "fraction number that are to be rounded", ->
	assert.compileTo '''
		body { margin: 0.6666 }
	''', '''
		body {
			margin: 0.667;
		}
	'''

test "percentage", ->
	assert.compileTo '''
		body { margin: 0% }
	''', '''
		body {
			margin: 0%;
		}
	'''

test "dimension", ->
	assert.compileTo '''
		body { margin: .2em }
	''', '''
		body {
			margin: 0.2em;
		}
	'''

test "single-quoted string", ->
	assert.compileTo '''
		body {
			content: 'abc';
		}
	''', '''
		body {
			content: 'abc';
		}
	'''

test "single-quoted string with escape", ->
	assert.compileTo '''
		body { content: 'ab\\'c' }
	''', '''
		body {
			content: 'ab\\'c';
		}
	'''

test "double-quoted string", ->
	assert.compileTo '''
		body {
			content: "abc";
		}
	''', '''
		body {
			content: "abc";
		}
	'''

test "double-quoted string with escape", ->
	assert.compileTo '''
		body {
			content: "abc\\"";
		}
	''', '''
		body {
			content: "abc\\"";
		}
	'''

test "double-quoted string with escape", ->
	assert.compileTo '''
		body {
			content: "abc\\"";
		}
	''', '''
		body {
			content: "abc\\"";
		}
	'''

test "color", ->
	assert.compileTo '''
		body {
			content: #ff1122;
		}
	''', '''
		body {
			content: #ff1122;
		}
	'''

test "null", ->
	assert.compileTo '''
		body {
			content: null;
		}
	''', '''
		body {
			content: null;
		}
	'''

test "compilte url", ->
	assert.compileTo '''
		body {
			content: url(http://example.com/);
		}
	''', '''
		body {
			content: url(http://example.com/);
		}
	'''

test "compilte quoted url", ->
	assert.compileTo '''
		body {
			content: url('http://example.com/');
		}
	''', '''
		body {
			content: url('http://example.com/');
		}
	'''

test "list", ->
	assert.compileTo '''
		body {
			font-family: foo bar baz;
		}
	''', '''
		body {
			font-family: foo bar baz;
		}
	'''

test "list seperated by commas", ->
	assert.compileTo '''
		body {
			font-family: foo,bar,baz;
		}
	''', '''
		body {
			font-family: foo, bar, baz;
		}
	'''

test "list separated by slashes", ->
	assert.compileTo '''
		body {
			font: 12px/1.25;
		}
	''', '''
		body {
			font: 12px/1.25;
		}
	'''

test "call", ->
	assert.compileTo '''
		body {
			content: attr(attr);
		}
	''', '''
		body {
			content: attr(attr);
		}
	'''

test "call with multiple arguments", ->
	assert.compileTo '''
		body {
			background: linear-gradient(#000000, #ffffff);
		}
	''', '''
		body {
			background: linear-gradient(#000000, #ffffff);
		}
	'''