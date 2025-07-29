[
	"{{"
	"}}"
	"{{-"
	"-}}"
	"{%"
	"%}"
	"{%-"
	"-%}"
] @tag.delimiter

[
	"asyncAll"
	"asyncEach"
	"endall"
	"endeach"
	"endfor"
	"endmacro"
	"for"
	"macro"
	"set"
] @keyword

[
	"include"
	; "import"
	; "from"
	; "extends"
	; "as"
] @keyword.import

[
	"else"
	"elif"
	"elseif"
	"endif"
	"if"
] @keyword.conditional

[
	"and"
	"in"
	"or"
] @keyword.operator

(comment_tag) @comment @spell

(string_literal) @string

(number_literal) @number

(float_literal) @number.float

(boolean_literal) @boolean

(null_literal) @constant

[
	(attribute_ignore)
	(attribute_context)
	; "recursive"
] @attribute.builtin

(binary_operator) @operator
