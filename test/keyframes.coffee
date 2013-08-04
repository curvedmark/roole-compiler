assert = require './assert'

test "compile @keyframes", ->
	assert.compileTo '''
		@keyframes name {}
	''', '''
		@keyframes name {}
	'''

test "compile @keyframes with from selector", ->
	assert.compileTo '''
		@keyframes name {
			from {}
		}
	''', '''
		@keyframes name {
			from {}
		}
	'''

test "compile @keyframes with percentage selector", ->
	assert.compileTo '''
		@keyframes name {
			0% {}
		}
	''', '''
		@keyframes name {
			0% {}
		}
	'''

test "compile @keyframes with selector list", ->
	assert.compileTo '''
		@keyframes name {
			0%, to {}
		}
	''', '''
		@keyframes name {
			0%,
			to {}
		}
	'''

test "compile prefixed @keyframes", ->
	assert.compileTo '''
		@-webkit-keyframes name {}
	''', '''
		@-webkit-keyframes name {}
	'''