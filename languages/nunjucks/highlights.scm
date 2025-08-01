[
	"{{"
	"}}"
	"{{-"
	"-}}"
	"{%"
	"%}"
	"{%-"
	"-%}"
] @punctuation.special

[
	"block"
	"call"
	"filter"
	"macro"
	"raw"
	"set"
	(end_statement)
] @keyword

[
	"as"
	"extends"
	"from"
	"import"
	"include"
] @keyword.import

(import_statement
	(identifier) @variable)
(import_as
	(identifier) @variable)

[
	"case"
	"default"
	"else"
	"elif"
	"elseif"
	"endif"
	"endswitch"
	"if"
	"switch"
] @keyword.conditional

[
	"asyncAll"
	"asyncEach"
	"endall"
	"endeach"
	"endfor"
	"for"
	"in"
] @keyword.repeat

[
	"and"
	"in"
	"or"
] @keyword.operator

(function_call
	(identifier) @function.call)
(filter_statement
	(expression
		(unary_expression
			(primary_expression
				(identifier) @function.call))))
(expression_filter
	(identifier) @function.call)

[
	(attribute_ignore)
	(attribute_context)
] @attribute.builtin

(binary_operator) @operator
(expression_filter "|" @operator)

(comment_tag) @comment @spell

(string_literal) @string

(number_literal) @number

(float_literal) @number.float

(boolean_literal) @boolean

(null_literal) @constant

[
	"("
	")"
	"["
	"]"
	"<"
	">"
] @punctuation.bracket

[
	","
	"."
	":"
] @punctuation.delimiter
