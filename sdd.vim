" Syntax for scriptsd database file (.sdd)

syn keyword dTypeAtt att.*
syn keyword dDeployKW *DEPLOY contained
syn keyword dElem dElem
syn keyword dComment %
syn keyword dKw file path version link

hi link dDeployKW Todo
hi link dElem Function
hi link dComment Comment
hi link dKw type

syn match dDeployKW /(\*DEPLOY)/
syn match dElem /^\[.*\]/
syn match dComment /%[^%].*$/ contains=dDeployKW

syn match Boolean /^!\[.*\]/
syn match Conditional /^{@.*}$/
syn match Identifier /[@\.].*[?:]/

syn region Comment start=/%{[\s]*/ end=/%}[\s]*/
syn region Conditional start=/{[\\|@]/ end=/}/
