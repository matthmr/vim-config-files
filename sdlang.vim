" Made by mH (https://github.com/matthmr)
" Syntax for the sd language (.sd)

syn keyword sdlangMakeKw  scope here
syn keyword sdlangTypeKw  jump type end rm ret goto type tag branch peek label
syn keyword sdlangApi     import static let proc const int void unsigned signed char float short long bool enum
syn keyword sdlangFunc    sync async expand iter as
syn keyword sdlangCond    impl new
syn keyword sdlangBool    nil true false

syn match   sdlangType    /\.\w*/

syn match   Number  /[0-9.]*/
syn match   Number  /0x[0-9a-f]*/
syn match   Number  /0b[01]*/
syn match   Number  /0[0-8]*/
syn match   Number  /0[0-8]*/
syn match   Number  /'.'/

syn match   Identifier  /@[0-9A-Za-z_]*/
syn match   Identifier  /\$[0-9A-Za-z_]*/
syn match   Identifier  /<(.*|\n)>/

syn match   Delimiter     /[{}]/
syn match   Delimiter     /[()]/
syn match   Delimiter     /[\[\]]/
syn match   Delimiter     /[+\-*%!~:;,./^><=\|&]/

syn region  Comment       start=/#/       end=/$/
syn region  String        start=/"/       end=/"/    skip=/\\"/

hi  link    sdlangTypeKw     Statement
hi  link    sdlangMakeKw     Type
hi  link    sdlangApi        Boolean
hi  link    sdlangFunc       Function
hi  link    sdlangCond       Function
hi  link    sdlangType       Type
hi  link    sdlangBool       Number
