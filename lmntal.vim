syn match lmnGuard "\(|\)"
syn match lmnRewrite "\(:-\)"
syn match lmnLineComment "//.*$"
syn region lmnBlockComment start="/\*" end="\*/"
syn match lmnRuleName "^.*@@" 
syn match lmnOpenBrace "\(\[\)"
syn match lmnCloseBrace "\(\]\)"
syn region lmnString start="\"" end="\"" 
syn match lmnType "[^a-zA-Z0-9]\(int\|string\|unary\|ground\)"
syn match lmnModule "[a-zA-Z0-9]\+\ze\.[a-zA-Z0-9]\+"
syn match lmnProc "\$[a-zA-Z0-9]*"
syn match lmnRules "@[a-zA-Z0-9]*"
syn match lmnLink "[^a-zA-Z0-9][A-Z][a-zA-Z0-9]*"
syn match atom "'.*'"

hi def link lmnLink Identifier
hi def link lmnProc PreProc
hi def link lmnRules PreProc

hi def link lmnModule Type
hi def link lmnType Type

hi def link lmnString String

hi def link lmnGuard Operator
hi def link lmnRewrite Operator
hi def link lmnOpenBrace Operator
hi def link lmnCloseBrace Operator

hi def link lmnLineComment Comment
hi def link lmnBlockComment Comment
hi def link lmnRuleName Comment

" 拡張子設定
au BufNewFile,BufRead *.lmn setf lmntal

