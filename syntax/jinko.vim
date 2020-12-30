" Language: Jinko

if exists("b:current_syntax")
    finish
endif

syntax region jinkoCommentMulti start="/\*" end="\*/" fold
syntax region jinkoCommentLineSlash start="//" end="\n" fold
syntax region jinkoCommentLineHashTag start="#" end="\n" fold
syntax keyword jinkoConditional if else
syntax keyword jinkoRepeat for in while loop
syntax keyword jinkoStatement func ext test mock mut return type
syntax keyword jinkoBuiltInType int string float char bool
syntax keyword jinkoBuiltInFn dump just incl
syntax match jinkoOperator display "\%(+\|-\|/\|*\|=\|\^\|&\||\|!\|>\|<\|\[\|]\|%\)=\?"
syntax match jinkoIntegerLiteral '[0-9]\+'
syntax match jinkoCustomType '[A-Z][a-zA-Z0-9_]\+'
syntax match jinkoGenericType '[A-Z]'
syntax match jinkoEscapeSequence '\\[\\nt"]' contained
syntax region jinkoStringLiteral oneline start='"' skip='\\"' end='"' end='$' contains=jinkoEscapeSequence

hi link jinkoCommentMulti Comment
hi link jinkoCommentLineSlash Comment
hi link jinkoCommentLineHashTag Comment
hi link jinkoConditional Conditional
hi link jinkoRepeat Repeat
hi link jinkoStatement Statement
hi link jinkoStructure Structure
hi link jinkoOperator Operator
hi link jinkoBuiltInType Type
hi link jinkoBuiltInFn Function
hi link jinkoIntegerLiteral Number
hi link jinkoCustomType Function
hi link jinkoGenericType Type
hi link jinkoStringLiteral String
hi link jinkoEscapeSequence SpecialChar
