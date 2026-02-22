; ---------------------------------------------------------------------------
; Tag delimiters  →  punctuation.bracket
; ---------------------------------------------------------------------------

"{{" @punctuation.bracket
"{{-" @punctuation.bracket
"{{+" @punctuation.bracket
"}}" @punctuation.bracket
"-}}" @punctuation.bracket
"+}}" @punctuation.bracket

"{%" @punctuation.bracket
"{%-" @punctuation.bracket
"{%+" @punctuation.bracket
"%}" @punctuation.bracket
"-%}" @punctuation.bracket
"+%}" @punctuation.bracket

"{#" @punctuation.bracket
"#}" @punctuation.bracket

; ---------------------------------------------------------------------------
; Comments
; ---------------------------------------------------------------------------

(comment_tag) @comment

; ---------------------------------------------------------------------------
; Keywords
; ---------------------------------------------------------------------------

[
  "if"
  "elif"
  "elseif"
  "else"
  "endif"
] @keyword.conditional

[
  "for"
  "in"
  "endfor"
  "asyncEach"
  "endeach"
  "asyncAll"
  "endall"
] @keyword.repeat

[
  "macro"
  "endmacro"
  "call"
  "endcall"
] @keyword.function

[
  "set"
  "endset"
  "block"
  "endblock"
  "extends"
  "include"
  "import"
  "from"
  "as"
  "filter"
  "endfilter"
  "switch"
  "endswitch"
  "case"
  "raw"
  "endraw"
  "verbatim"
  "endverbatim"
] @keyword

(default_statement) @keyword

[
  "ignore"
  "missing"
  "with"
  "without"
  "context"
] @keyword.modifier

; ---------------------------------------------------------------------------
; Operators
; ---------------------------------------------------------------------------

(binary_operator) @operator
(unary_operator) @operator

"." @punctuation.delimiter
":" @punctuation.delimiter
"|" @operator

; ---------------------------------------------------------------------------
; Punctuation
; ---------------------------------------------------------------------------

"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

"," @punctuation.delimiter

; ---------------------------------------------------------------------------
; Literals
; ---------------------------------------------------------------------------

(boolean_literal) @boolean

(null_literal) @constant.builtin

(number_literal) @number
(float_literal) @number.float

(string_literal) @string

; ---------------------------------------------------------------------------
; Identifiers
; ---------------------------------------------------------------------------

(identifier) @variable

; ---------------------------------------------------------------------------
; Functions
; ---------------------------------------------------------------------------

(function_call
  (identifier) @function.call)

; Builtin filters  →  function.builtin
; Used as plain identifier:  {{ items | lower }}
(expression_filter
  (identifier) @function.builtin
  (#any-of? @function.builtin
    "abs"
    "batch"
    "capitalize"
    "center"
    "d"
    "default"
    "dictsort"
    "dump"
    "e"
    "escape"
    "first"
    "float"
    "forceescape"
    "groupby"
    "indent"
    "int"
    "join"
    "last"
    "length"
    "list"
    "lower"
    "nl2br"
    "random"
    "reject"
    "rejectattr"
    "replace"
    "reverse"
    "round"
    "safe"
    "select"
    "selectattr"
    "slice"
    "sort"
    "string"
    "striptags"
    "sum"
    "title"
    "trim"
    "truncate"
    "upper"
    "urlencode"
    "urlize"
    "wordcount"))

; Used as a function call:  {{ items | join(",") }}
(expression_filter
  (function_call
    (identifier) @function.builtin)
  (#any-of? @function.builtin
    "abs"
    "batch"
    "capitalize"
    "center"
    "d"
    "default"
    "dictsort"
    "dump"
    "e"
    "escape"
    "first"
    "float"
    "forceescape"
    "groupby"
    "indent"
    "int"
    "join"
    "last"
    "length"
    "list"
    "lower"
    "nl2br"
    "random"
    "reject"
    "rejectattr"
    "replace"
    "reverse"
    "round"
    "safe"
    "select"
    "selectattr"
    "slice"
    "sort"
    "string"
    "striptags"
    "sum"
    "title"
    "trim"
    "truncate"
    "upper"
    "urlencode"
    "urlize"
    "wordcount"))

; Remaining filters (user-defined)
(expression_filter
  (function_call
    (identifier) @function.call))

(expression_filter
  (identifier) @function.call)

(macro_statement
  (function_call
    (identifier) @function.definition))

(call_statement
  (function_call
    (identifier) @function.call))
