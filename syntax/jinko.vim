" Language: Jinko

if exists("b:current_syntax")
    finish
endif

syntax keyword jinkoConditional if else
syntax keyword jinkoRepeat for in while loop
syntax keyword jinkoStatement func ext test mock mut return type
syntax keyword jinkoBuiltInType int string float char bool
syntax keyword jinkoBuiltInFn dump just incl
syntax match jinkoOperator display "\%(+\|-\|/\|*\|=\|\^\|&\||\|!\|>\|<\|\[\|]\|%\)=\?"
syntax keyword jinkoBool true false
syntax match jinkoIntegerLiteral '[0-9]\+'
syntax match jinkoCustomType '[A-Z][a-zA-Z0-9_]\+'
syntax match jinkoEscapeSequence '\\[\\nt"]' contained
syntax region jinkoStringLiteral oneline start='"' skip='\\"' end='"' end='$' contains=jinkoEscapeSequence
syntax region jinkoCommentMulti start="/\*" end="\*/" fold contains=jinkoOperator
syntax region jinkoCommentLineSlash start="//" end="\n" fold contains=jinkoOperator
syntax region jinkoCommentLineHashTag start="#" end="\n" fold contains=jinkoOperator

hi link jinkoConditional Conditional
hi link jinkoRepeat Repeat
hi link jinkoStatement Statement
hi link jinkoStructure Structure
hi link jinkoOperator Operator
hi link jinkoBuiltInType Type
hi link jinkoBuiltInFn Function
hi link jinkoIntegerLiteral Number
hi link jinkoCustomType Function
hi link jinkoBool Boolean
hi link jinkoStringLiteral String
hi link jinkoEscapeSequence SpecialChar
hi link jinkoCommentMulti Comment
hi link jinkoCommentLineSlash Comment
hi link jinkoCommentLineHashTag Comment
