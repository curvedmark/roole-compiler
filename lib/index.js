var Compiler = require('./Compiler');

exports.compile = function (node, options) {
	return new Compiler(options).visit(node);
};

exports.Compiler = Compiler;