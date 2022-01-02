" Made by mH (https://github.com/matthmr)
" Syntax for the sd language (.sd)

syn keyword scriptsdMakeKw  list enum map class literal here
syn keyword scriptsdTypeKw  child parent context object var proc label jump goto branch assign new type
syn keyword scriptsdApi     macro export import static const int float string
syn keyword scriptsdFunc    sync this async await expr
syn keyword scriptsdCond    wrap use get set proto cast
syn keyword scriptsdBuilt   NULL

syn match   Conditional     /^{.*}/
syn match   Function        /^\[[^]]*\]/
syn match   Function        /^\s*\[[^]]*\]/
syn match   Identifier      /@\w*/
syn match   Identifier      /@\[[^]]*\]/
syn match   Type            /\.\w*/
syn match   Comment         /.*%.*/

syn region  Comment         start=/%{[\s]*/ end=/%}[\s]*/
syn region  String          start=/["']/    end=/["']/    skip=/\\["']/

hi  link    scriptsdTypeKw Statement
hi  link    scriptsdMakeKw Type
hi  link    scriptsdApi    Boolean
hi  link    scriptsdFunc   Function
hi  link    scriptsdBuilt  Label
hi  link    scriptsdCond   Function

