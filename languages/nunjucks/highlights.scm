([
  "{{"
  "}}"
  "{{-"
  "-}}"
  "{%"
  "%}"
  "{%-"
  "-%}"
] @tag.delimiter
  (#set! priority 110))

([
  "asyncAll"
  "asyncEach"
  "endall"
  "endeach"
  "endfor"
  "endmacro"
  "for"
  "macro"
] @keyword
  (#set! priority 110))

([
  "else"
  "elif"
  "elseif"
  "endif"
  "if"
] @keyword.conditional
  (#set! priority 110))

([
  "and"
  "in"
  "or"
] @keyword.operator
  (#set! priority 110))
