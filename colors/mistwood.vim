"  ---------------------------------------------------
" ╔╦╗┬┌─┐┌┬┐  ╦ ╦┌─┐┌─┐┌┬┐
" ║║║│└─┐ │   ║║║│ ││ │ ││
" ╩ ╩┴└─┘ ┴   ╚╩╝└─┘└─┘─┴┘
"  ---------------------------------------------------
"  Color Theme. Uses Tree-sitter and git

set background=dark
hi! clear

if exists("syntax_on")
    syntax reset
endif

" Set Static colour vars
let s:MW_Black = '#1C1C1C'
let s:MW_DarkGrey = '#222222'
let s:MW_LightGrey = '#665C54'
let s:MW_DarkRed = '#CC241D'
let s:MW_Red = '#b36d43'
let s:MW_Green = '#606D4A'
let s:MW_LightGreen = '#849567'
let s:MW_Yellow = '#E9C46A'
let s:MW_Blue = '#64787D'
let s:MW_LightMagenta = '#D4C5C7'
let s:MW_Magenta = '#D2A1B8'
let s:MW_Cyan = '#C1F7DC'
let s:MW_White = '#CDB565'
let s:MW_Brown = '#918378'
 
" Builds and executes highlight group colors
function! s:HL(group, fg, bg, ...)
    "Arguments: group, fg, bg, sp, blend, gui

    let fg = a:fg
    let bg = a:bg

    let sp = a:0 >= 1 ? a:1 : 'NONE'
    let blend = a:0 >= 2 ? a:2 : 'NONE'
    let gui = a:0 >= 3 ? a:3 : 'NONE'    

    let histring = [ 'hi', a:group,
        \ 'guifg=' . a:fg, 'guibg=' . a:bg,
        \ 'guisp=' . sp, 'blend=' . blend,
        \ 'gui=' . gui
        \ ]

    execute join(histring, ' ')
endfunction


" UI Colours
call s:HL('TermCursor', 'NONE', 'NONE', 'NONE', 'NONE', 'reverse')
call s:HL('ColorColumn', 'NONE', s:MW_Black)
call s:HL('Conceal', 'NONE', s:MW_Black)
hi! link CurSearch Search
call s:HL('Cursor', s:MW_Black, s:MW_Red)
call s:HL('lCursor', 'bg', 'fg', 'NONE', 'NONE', 'NONE')
call s:HL('CursorColumn', 'NONE', 'NONE')
call s:HL('CursorLine', 'NONE', s:MW_Black)
call s:HL('Directory', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('DiffAdd', s:MW_Black, s:MW_Green, 'NONE', 'NONE', 'NONE')
call s:HL('DiffChange', s:MW_Black, s:MW_Red, 'NONE', 'NONE', 'NONE')
call s:HL('DiffDelete', s:MW_Black, s:MW_Yellow, 'NONE', 'NONE', 'bold')
call s:HL('DiffText', s:MW_Black, s:MW_Cyan, 'NONE', 'NONE', 'bold')
hi! link EndOfBuffer NonText
call s:HL('TermCursor', 'NONE', 'NONE', 'NONE', 'NONE', 'reverse')
call s:HL('ErrorMsg', s:MW_Red, s:MW_Black, 'NONE', 'NONE', 'NONE')
hi! link WinBarNC WinBar
hi! link WinSeparator VertSplit
call s:HL('Folded', s:MW_LightGrey, s:MW_DarkGrey, 'NONE', 'NONE', 'NONE')
call s:HL('FoldColumn', s:MW_LightGrey, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('SignColumn', s:MW_LightGrey, "NONE", 'NONE', 'NONE', 'NONE')
call s:HL('IncSearch', s:MW_Black, s:MW_Magenta, 'NONE', 'NONE', 'NONE')
hi! link Substitute Search
call s:HL('LineNr', s:MW_LightGrey, "NONE", 'NONE', 'NONE', 'NONE')
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
call s:HL('CursorLineNr', s:MW_Blue, 'NONE')
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
call s:HL('MatchParen', s:MW_White, 'NONE', 'NONE', 'NONE', 'bold,underline')
call s:HL('ModeMsg', 'NONE', 'NONE', 'NONE', 'NONE', 'bold')
hi! link MsgSeparator StatusLine
call s:HL('MoreMsg', s:MW_Green, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('NonText', s:MW_Green, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('Normal', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE') " NORMAL
hi! link NormalFloat Pmenu
call s:HL('FloatShadow', 'NONE', s:MW_Red, 'NONE', 'NONE', 'NONE')
call s:HL('FloatShadowThrough', 'NONE', s:MW_Black, 'NONE', 'NONE', 'NONE')
hi! link FloatTitle Title

call s:HL('Title', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('Visual', s:MW_LightGrey, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('WarningMsg', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
hi! link Whitespace NonText

call s:HL('VertSplit', s:MW_Black, 'NONE', 'NONE', 'NONE', 'NONE')
hi! link Conceal Ignore
call s:HL('CursorLineNr', s:MW_Blue, 'NONE')
hi! link helpExample String
hi! link helpHeadline Title
hi! link helpHyperTextEntry Statement
hi! link helpHyperTextJump Underlined
hi! link helpSectionDelim Comment
hi! link helpURL Underlined
hi! link vimContinue Delimiter
hi! link vimHiAttrib Constant
hi! link vimSetSep Delimiter

call s:HL('Question', s:MW_Green, 'NONE', 'NONE', 'NONE', 'bold')
hi! link QuickFixLine Search

call s:HL('StatusLine', s:MW_White, s:MW_Black, 'NONE', 'NONE', 'bold')
call s:HL('StatusLineNC', s:MW_LightGrey, s:MW_Black, 'NONE', 'NONE', 'bold')

call s:HL('TabLine', s:MW_LightGrey, '#111111', 'NONE', 'NONE', 'NONE')
call s:HL('TabLineSel', '#111111', s:MW_Green, 'NONE', 'NONE', 'bold')


call s:HL('WildMenu', s:MW_Black, s:MW_Cyan, 'NONE', 'NONE', 'NONE')
call s:HL('WinBar', 'NONE', 'NONE', 'NONE', 'NONE', 'bold')
hi! link WinBarNC WinBar

call s:HL('ScrollbarCursor', s:MW_Black, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarCursorHandle', s:MW_Black, s:MW_LightGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarError', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarErrorHandle', s:MW_Red, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarGitAdd', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarGitAddHandle', s:MW_Green, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarGitChange', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarGitChangeHandle', s:MW_Red, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarGitDelete', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarGitDeleteHandle', s:MW_Yellow, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarHandle', 'NONE', s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarHint', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarHintHandle', s:MW_Green, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarInfo', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarInfoHandle', s:MW_Green, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarMisc', s:MW_Magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarMiscHandle', s:MW_Magenta, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarSearch', s:MW_Cyan, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarSearchHandle', s:MW_Cyan, s:MW_DarkGrey, 'NONE', '0', 'NONE')
call s:HL('ScrollbarWarn', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('ScrollbarWarnHandle', s:MW_Yellow, s:MW_DarkGrey, 'NONE', '0', 'NONE')

" Popup menus
call s:HL('Pmenu', s:MW_White, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('PmenuSel', s:MW_White, s:MW_LightGrey, 'NONE', 'NONE', 'NONE')
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
call s:HL('PmenuSbar', 'NONE', s:MW_LightGrey, 'NONE', 'NONE', 'NONE')
call s:HL('PmenuThumb', s:MW_White, s:MW_White, 'NONE', 'NONE', 'NONE')
call s:HL('PmenuMatch', s:MW_White, s:MW_White, 'NONE', 'NONE', 'NONE')
call s:HL('PmenuMatchSel', 'NONE', s:MW_LightGrey, 'NONE', 'NONE', 'NONE')

call s:HL('SpecialKey', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE')

" Sppeling...
call s:HL('SpellBad', s:MW_Red, 'NONE', s:MW_White, 'NONE', 'underline')
call s:HL('SpellCap', s:MW_Green, 'NONE', s:MW_White, 'NONE', 'underline')
call s:HL('SpellLocal', s:MW_Magenta, 'NONE', s:MW_White, 'NONE', 'underline')
call s:HL('SpellRare', s:MW_Yellow, 'NONE', s:MW_White, 'NONE', 'underline')


" General Syntax
call s:HL('Comment', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('Constant', s:MW_Magenta, 'NONE')
call s:HL('String', s:MW_LightGreen, 'NONE', 'NONE', 'NONE', 'italic')
hi! link Character String
call s:HL('Number', s:MW_Blue, 'NONE')
call s:HL('Boolean', s:MW_Magenta, 'NONE')
call s:HL('Float', s:MW_Blue, 'NONE')
call s:HL('Identifier', s:MW_White, 'NONE')
call s:HL('Function', s:MW_Green, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('Statement', s:MW_Red, 'NONE')
call s:HL('Conditional', s:MW_Red, 'NONE')
call s:HL('Repeat', s:MW_Red, 'NONE')
call s:HL('Label', s:MW_Red, 'NONE')
call s:HL('Operator', s:MW_Cyan, 'NONE')
call s:HL('Keyword', s:MW_Red, 'NONE')
call s:HL('Exception', s:MW_Magenta, 'NONE')
call s:HL('PreProc', s:MW_White, 'NONE')
call s:HL('Include', s:MW_Red, 'NONE')
call s:HL('Define', s:MW_Red, 'NONE')
call s:HL('Macro', s:MW_Red, 'NONE')
call s:HL('PreCondit', s:MW_Red, 'NONE')
call s:HL('Type', s:MW_Blue, 'NONE')
call s:HL('StorageClass', s:MW_Magenta, 'NONE')
call s:HL('Structure', s:MW_Magenta, 'NONE')
call s:HL('Typedef', s:MW_Red, 'NONE')
call s:HL('Special', s:MW_Green, 'NONE')
call s:HL('SpecialChar', s:MW_Green, 'NONE')
call s:HL('Tag', s:MW_Cyan, 'NONE')
call s:HL('Delimiter', s:MW_White, 'NONE')
call s:HL('SpecialComment', s:MW_LightGrey, 'NONE')
call s:HL('Debug', s:MW_Red, 'NONE')
call s:HL('Underlined', s:MW_White, 'NONE')
call s:HL('Ignore', s:MW_LightGrey, 'NONE')
call s:HL('Error', s:MW_Red, 'NONE')
call s:HL('Todo', s:MW_Magenta, 'NONE')
call s:HL('Added', s:MW_Green, 'NONE')
call s:HL('Changed', s:MW_Yellow, 'NONE')
call s:HL('Removed', s:MW_Red, 'NONE')

" LSP
call s:HL('DiagnosticDeprecated', 'NONE', 'NONE', s:MW_LightGrey, 'NONE', 'strikethrough')
call s:HL('DiagnosticError', s:MW_Red, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticHintFloating', s:MW_LightGrey, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticHint', s:MW_LightGrey, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticInfo', s:MW_Blue, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticOk', s:MW_Blue, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticSignError', s:MW_Red, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticSignHint', s:MW_LightGrey, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticSignInfo', s:MW_Blue, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticSignWarn', s:MW_Yellow, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticUnderlineError', 'NONE', 'NONE', 'NONE', 'NONE', 'underline')
call s:HL('DiagnosticUnderlineHint', 'NONE', 'NONE', 'NONE', 'NONE', 'underline')
call s:HL('DiagnosticUnderlineInfo', 'NONE', 'NONE', 'NONE', 'NONE', 'underline')
call s:HL('DiagnosticUnderlineOk', 'NONE', 'NONE', 'NONE', 'NONE', 'underline')
call s:HL('DiagnosticUnderlineWarn', 'NONE', 'NONE', 'NONE', 'NONE', 'underline')
call s:HL('DiagnosticUnnecessary', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'underline')
call s:HL('DiagnosticVirtualTextError', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticVirtualTextHint', s:MW_LightGrey, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticVirtualTextInfo', s:MW_Blue, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticVirtualTextWarn', s:MW_Yellow, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticVirtualTextWarning', s:MW_Red, s:MW_Black, 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticWarn', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticWarningFloating', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('DiagnosticWarning', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
hi! link DiagnosticErrorFloating DiagnosticError
hi! link DiagnosticFloatingError DiagnosticError
hi! link DiagnosticFloatingHint DiagnosticHint
hi! link DiagnosticFloatingInfo DiagnosticInfo
hi! link DiagnosticFloatingOk DiagnosticOk
hi! link DiagnosticFloatingWarn DiagnosticWarn
hi! link DiagnosticFloatingWarning DiagnosticWarning
hi! link DiagnosticSignOk DiagnosticOk
hi! link DiagnosticVirtualTextOk DiagnosticOk

call s:HL('LspBorderBG', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('LspFloatWinNormal', s:MW_White, '#43492a', 'NONE', 'NONE', 'NONE')
call s:HL('LspReferenceRead', s:MW_Green, 'NONE', '#fd9720', 'NONE', 'bold,undercurl')
call s:HL('LspReferenceText', s:MW_White, '#43492a', '#fd9720', 'NONE', 'bold,undercurl')
call s:HL('LspReferenceWrite', s:MW_Green, 'NONE', '#fd9720', 'NONE', 'bold,undercurl')
call s:HL('LspSignatureActiveParameter', 'NONE', 'NONE', '#fbec9f', 'NONE', 'bold,italic,underline')
hi! link LspCodeLens Comment
hi! link @lsp.type.comment Comment
hi! link @lsp.type.decorator Function
hi! link @lsp.type.enumMember Constant
hi! link @lsp.type.function Function
hi! link @lsp.type.method Function
hi! link @lsp.type.parameter Identifier
hi! link @lsp.type.property Identifier
hi! link @lsp.type.type Type
hi! link @lsp.type.variable Identifier

" Git
call s:HL('DiffAdded', s:MW_Green, s:MW_DarkGrey, 'NONE', 'NONE', 'NONE')
call s:HL('DiffRemoved', s:MW_Red, s:MW_DarkGrey, 'NONE', 'NONE', 'NONE')
call s:HL('gitCommitBranch', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('gitCommitSelectedFile', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('gitCommitSelectedType', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('gitCommitUnmergedFile', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('gitCommitUnmergedType', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('GitSignsAdd', s:MW_Green, s:MW_DarkGrey, 'NONE', 'NONE', 'NONE')
call s:HL('GitSignsChange', s:MW_Red, s:MW_DarkGrey, 'NONE', 'NONE', 'NONE')
call s:HL('GitSignsDelete', s:MW_Yellow, s:MW_DarkGrey, 'NONE', 'NONE', 'NONE')
hi! link gitCommitDiscardedFile gitCommitUnmergedFile
hi! link gitCommitDiscardedType gitCommitUnmergedType
hi! link gitCommitFile Directory
hi! link gitCommitUntrackedFile gitCommitUnmergedFile

" Python Specific
call s:HL('pythonClassVar', s:MW_Magenta, 'NONE', 'NONE', 'NONE', 'italic')
call s:HL('pythonClass', s:MW_Green, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('pythonOperator', s:MW_White, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('pythonDottedName', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
hi! link PythonDecorator PythonDottedName
hi! link pythonFunction Function
call s:HL('pythonBuiltin', s:MW_LightMagenta, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('pythonBuiltinType', s:MW_Cyan, 'NONE', 'NONE', 'NONE', 'bold')
call s:HL('pythonAttribute', s:MW_DarkRed, 'NONE', 'NONE', 'NONE', 'NONE')

" xml
call s:HL('xmlTag', s:MW_Blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('xmlTagName', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
hi! link xmlAttrib xmlTag
hi! link xmlEndTag xmlTag
hi! link xmlEqual xmlTag
hi! link xmlString xmlTagName

" Treesitter
call s:HL('@keyword', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
"call s:HL('@keyword.function', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
"call s:HL('@keyword.operator', s:MW_Magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@function', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@function.builtin', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@function.call', s:MW_Green, 'NONE', 'NONE', 'NONE', 'italic')
call s:HL('@function.method', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@function.method.call', s:MW_Green, 'NONE', 'NONE', 'NONE', 'italic')
call s:HL('@method', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@method.call', s:MW_Cyan, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@class', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@type', s:MW_Blue, 'NONE', 'NONE', 'NONE', 'italic')
call s:HL('@type.builtin', s:MW_Blue, 'NONE', 'NONE', 'NONE', 'italic')
call s:HL('@constructor', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@variable', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@variable.parameter', s:MW_White, 'NONE', 'NONE', 'NONE', 'italic')
call s:HL('@parameter', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@constant', s:MW_Blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@constant.builtin', s:MW_Blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@comment', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@string', s:MW_Brown, 'NONE', 'NONE', 'NONE', 'NONE')
"call s:HL('@string.regex', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@string.documentation', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@number', s:MW_Blue, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@boolean', s:MW_Magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@operator', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@punctuation.delimiter', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@punctuation.bracket', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@conditional', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@repeat', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@exception', s:MW_Magenta, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@attribute', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'italic')
call s:HL('@namespace', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@include', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@field', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@text.todo', s:MW_White, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@text.note', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@text.warning', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@text.danger', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@tag', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@label', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@debug', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@preproc', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@reference', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@text.title', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@text.underline', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@text.bold', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@error', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('@warning', s:MW_Red, 'NONE', 'NONE', 'NONE', 'NONE')

" fzf
hi! link FzfLuaBorder Normal
hi! link FzfLuaCursor Cursor
hi! link FzfLuaCursorLine CursorLine
hi! link FzfLuaCursorLineNr CursorLineNr
hi! link FzfLuaNormal Normal
hi! link FzfLuaScrollFloatEmpty PmenuSbar
hi! link FzfLuaScrollFloatFull PmenuThumb
hi! link FzfLuaSearch IncSearch

" NerdTree
hi! link NERDTreeExecFile String
hi! link NERDTreeHelp Comment

" Telescope
call s:HL('TelescopeBorder', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeMultiIcon', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeMultiSelection', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeNormal', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewBlock', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewCharDev', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewDate', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewDirectory', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewExecute', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewGroup', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewHyphen', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewLink', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewMatch', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewMessageFillchar', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewMessage', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewNormal', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewPipe', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewRead', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewSize', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewSocket', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewSticky', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewUser', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePreviewWrite', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePromptBorder', s:MW_Yellow, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopePromptNormal', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsClass', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsComment', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsConstant', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsDiffUntracked', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsField', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsFunction', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsIdentifier', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsLineNr', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsMethod', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsNormal', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsNumber', s:MW_LightGrey, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsOperator', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsSpecialComment', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsStruct', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeResultsVariable', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeSelectionCaret', s:MW_White, s:MW_LightGrey, 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeTitle', s:MW_Green, 'NONE', 'NONE', 'NONE', 'NONE')
call s:HL('TelescopeSelection', s:MW_White, s:MW_LightGrey, 'NONE', 'NONE', 'NONE')
hi! link TelescopeMatching Special
hi! link TelescopePreviewBorder TelescopeBorder
hi! link TelescopePreviewLine TelescopeSelection
hi! link TelescopePreviewTitle TelescopeTitle
hi! link TelescopePromptCounter TelescopeBorder
hi! link TelescopePromptPrefix TelescopeTitle
hi! link TelescopePromptTitle TelescopeTitle
hi! link TelescopeResultsBorder TelescopeBorder
hi! link TelescopeResultsFileIcon Special
hi! link TelescopeResultsTitle TelescopeTitle
