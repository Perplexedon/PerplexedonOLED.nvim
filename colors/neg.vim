" Name:        neg
" Version:     2.2
" Last Change: 20-01-2020
" Maintainer:  Sergey Miroshnichenko <serg.zorg@gmail.com>
" URL:         https://github.com/neg-serg/neovim-colorschemes/blob/master/colors/neg.vim
" About:       neg theme extends Jason W Ryan's miromiro(1) Vim color file

set background=dark
hi clear
if exists('syntax on')
    syntax reset
endif

let s:bclr='#000000'   " background color hexadecimal

let s:dark='#121212'   " dark color
let s:whit='#c0c0c0'   " white color

let s:culc='#272727'   " cursor line/column hexadecimal
let s:comm='#3C4754'   " comment color

let s:lit1='#017978'   " literal color 1
let s:lit2='#008787'   " literal color 2
let s:lit3='#007A51'   " literal color 3
let s:ops1='#367cb0'   " operations color 1
let s:ops2='#2b7694'   " operations color 2
let s:ops3='#005faf'   " operations color 3
let s:ops4='#395573'   " operations color 4
let s:otag='#357B63'   " tag highlight color
let s:lstr='#54667A'   " literal string highlight
let s:incl='#005f87'   " include color
let s:dlim='#4779b3'   " delimiter color
let s:cdbg='#8a2f58'   " debug color

let s:visu='#002b36'   " visual highlight
let s:high='#899ca1'   " highlight color

let s:func='#7095b0'   " function highlight
let s:dadd='#25533f'   " diff add
let s:dchg='#00406d'   " diff change
let s:errm='#666666'   " error message
let s:clin='#080808'   " cursor line

let s:blod='#5f0000'   " bloody red

let s:pmen='#6C7E96'   " pmenu color
let s:msel='#0c1014'   " menu select color

let s:ccur='#375bc1'   " color cursor
let s:csel='#005faf'   " search highlight color

let s:iden='#6289B3'   " identifier color

let s:syne='#cf4f88'   " Syntastic error

let s:lbgn='#7095b0'   " light preprocessor color
let s:dbng='#506a7d'   " dark preprocessor color

fun! s:hi(group, bg, fg, attr)
    exec "hi" a:group
         \ . ' ' . (a:bg   != '' ? 'guibg=' . a:bg   : '')
         \ . ' ' . (a:fg   != '' ? 'guifg=' . a:fg   : '')
         \ . ' ' . (a:attr != '' ? 'gui='   . a:attr : '')
endfun

hi Normal guifg=#6C7E96 guibg=NONE

hi! clear DiffAdd
hi! clear DiffAdded
hi! clear DiffRemoved
hi! clear DiffChange
hi! clear DiffDelete
hi! clear DiffText

hi! link DeclRefExpr Normal
hi! link Conceal Operator
hi! link DiffRemoved Constant
hi! link DiffAdded String

call s:hi('Ignore',               '',     s:comm, '')
call s:hi('Comment',              '',     s:comm, '')
call s:hi('Float',                '',     s:lit3, '')
call s:hi('Include',              '',     s:incl, '')
call s:hi('Define',               '',     s:dbng, '')
call s:hi('Macro',                '',     s:ops3, '')
call s:hi('PreProc',              '',     s:lbgn, '')
call s:hi('PreCondit',            '',     s:ops3, '')
call s:hi('NonText',              '',     s:ops2, '')
call s:hi('Directory',            '',     s:ops2, '')
call s:hi('SpecialKey',           '',     s:otag, '')
call s:hi('Type',                 '',     s:ops2, '')
call s:hi('String',               '',     s:lstr, '')
call s:hi('Constant',             '',     s:lit2, '')
call s:hi('Special',              '',     s:lit1, '')
call s:hi('SpecialChar',          '',     s:lit2, '')
call s:hi('Number',               '',     s:ops1, '')
call s:hi('Identifier',           '',     s:iden, '')
call s:hi('Conditional',          '',     s:ops1, '')
call s:hi('Repeat',               '',     s:ops1, '')
call s:hi('Statement',            '',     s:ops4, '')
call s:hi('Label',                '',     s:ops3, '')
call s:hi('Operator',             '',     s:ops2, '')
call s:hi('Keyword',              '',     s:ops2, '')
call s:hi('StorageClass',         '',     s:ops1, '')
call s:hi('Structure',            '',     s:incl, '')
call s:hi('Typedef',              '',     s:ops2, '')
call s:hi('Function',             '',     s:func, '')
call s:hi('cFunctionTag',         '',     s:lit2, '')
call s:hi('Exception',            '',     s:cdbg, '')
call s:hi('Underlined',           '',     s:ops4, '')
call s:hi('Title',                '',     s:lit3, '')
call s:hi('Tag',                  '',     s:otag, '')
call s:hi('Delimiter',            '',     s:dlim, '')
call s:hi('SpecialComment',       '',     s:high, 'underline')
call s:hi('Boolean',              '',     s:lit3, '')
call s:hi('Todo',                 'NONE', s:cdbg, '')
call s:hi('MoreMsg',              'NONE', s:ops3, '')
call s:hi('ModeMsg',              'NONE', s:ops3, '')
call s:hi('Debug',                'NONE', s:cdbg, '')
call s:hi('MatchParen',           s:high, s:dark, '')
call s:hi('ErrorMsg',             'NONE', s:errm, '')
call s:hi('WildMenu',             s:dark, s:incl, '')
call s:hi('Folded',               s:visu, s:high, '')
call s:hi('Search',               'NONE', s:csel, 'italic')
call s:hi('IncSearch',            s:dark, s:csel, 'italic,underline')
call s:hi('WarningMsg',           'NONE', s:errm, '')
call s:hi('Question',             'NONE', s:lbgn, '')
call s:hi('Visual',               s:visu, s:high, '')
call s:hi('StatusLine',           'NONE', s:ops4, 'bold')
call s:hi('StatusLineNC',         'NONE', 'NONE', 'none')
call s:hi('VertSplit',            'NONE', 'NONE', 'none')

call s:hi('TabLine',              s:dark, s:high, '')
call s:hi('TabLineFill',          'NONE', s:dark, '')
call s:hi('TabLineSel',           s:dark, s:high, '')

call s:hi('Cursor',               s:ccur, 'NONE', 'NONE')
call s:hi('CursorLine',           s:clin, 'NONE', 'none')
call s:hi('CursorLineNr',         'NONE', s:otag, 'none')
call s:hi('CursorColumn',         s:culc, 'NONE', '')
call s:hi('ColorColumn',          s:culc, 'NONE', '')
call s:hi('FoldColumn',           'NONE', s:comm, '')
call s:hi('SignColumn',           'NONE', 'NONE', '')

call s:hi('DiffAdd',              s:whit, s:dadd, '')
call s:hi('DiffChange',           s:whit, s:dchg, '')
call s:hi('DiffText',             'NONE', s:whit, '')

call s:hi('DiffDelete',           s:blod, s:bclr, '')
call s:hi('Error',                s:blod, s:bclr, '')

call s:hi('Pmenu',                s:pmen, s:bclr, 'reverse')
call s:hi('PmenuSel',             s:csel, s:msel, 'reverse')
call s:hi('PmenuSbar',            s:dark, 'NONE', '')
call s:hi('PmenuThumb',           s:dbng, 'NONE', '')

call s:hi('vimCommentTitle',      '',     s:lbgn, '')
call s:hi('vimFold',              s:whit, s:dark, '')
call s:hi('helpHyperTextJump',    '',     s:otag, '')

call s:hi('javaScriptNumber',     '',     s:otag, '')
call s:hi('htmlTag',              '',     s:ops2, '')
call s:hi('htmlEndTag',           '',     s:ops2, '')
call s:hi('htmlTagName',          '',     s:otag, '')
call s:hi('perlSharplbgn',        '',     s:lbgn, 'standout')
call s:hi('perlStatement',        '',     s:ops3, '')
call s:hi('perlStatementStorage', '',     s:cdbg, '')
call s:hi('perlVarPlain',         '',     s:lit3, '')
call s:hi('perlVarPlain2',        '',     s:otag, '')
call s:hi('rubySharplbgn',        '',     s:lbgn, 'standout')

call s:hi('diffLine',             '',     s:lbgn, '')
call s:hi('diffOldLine',          '',     s:dbng, '')
call s:hi('diffOldFile',          '',     s:dbng, '')
call s:hi('diffNewFile',          '',     s:dbng, '')
call s:hi('diffAdded',            '',     s:ops4, '')
call s:hi('diffRemoved',          '',     s:cdbg, '')
call s:hi('diffChanged',          '',     s:ops2, '')

call s:hi('fzf1',                 '',     s:cdbg, '')
call s:hi('fzf2',                 '',     s:lit3, '')
call s:hi('fzf3',                 '',     s:otag, '')

if has('spell')
    hi clear SpellBad
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellLocal
    call s:hi('SpellBad',   '', '', 'underline')
    call s:hi('SpellCap',   '', '', 'underline')
    call s:hi('SpellRare',  '', '', 'underline')
    call s:hi('SpellLocal', '', '', 'underline')
endif

call s:hi('SyntasticErrorSign',   s:culc, s:syne, '')
call s:hi('SyntasticWarningSign', s:culc, s:ops3, '')

call s:hi('TermCursor',   s:ccur, 'NONE', 'NONE')
call s:hi('TermCursorNC', s:comm, 'NONE', 'NONE')

hi link NormalFloat Normal
hi link CocFloating Normal
hi LineNr guifg=#202022 guibg=#040404

" add pmenu transparency
hi PmenuSel blend=0