var assert = require('assert');
var parser = require('roole-parser');
var compiler = require('..');

exports.compileTo = function (input, css) {
	var ast = parser.parse(input);
	var output = compiler.compile(ast);
	if (css) css += '\n';
	assert.equal(output, css);
};