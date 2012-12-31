" Vim color file - spiderhawk
" Generated by http://bytefluent.com/vivify 2012-12-31
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "spiderhawk"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi SpecialComment -- no settings --
"hi Typedef -- no settings --
"hi Title -- no settings --
hi Folded guifg=#ffffff guibg=#333333 guisp=#333333 gui=italic ctermfg=15 ctermbg=236 cterm=NONE
"hi PreCondit -- no settings --
"hi Include -- no settings --
"hi TabLineSel -- no settings --
"hi StatusLineNC -- no settings --
"hi CTagsMember -- no settings --
"hi NonText -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
"hi Debug -- no settings --
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
"hi Identifier -- no settings --
"hi SpecialChar -- no settings --
"hi Conditional -- no settings --
"hi StorageClass -- no settings --
"hi Todo -- no settings --
"hi Special -- no settings --
"hi LineNr -- no settings --
"hi StatusLine -- no settings --
hi Normal guifg=#eeeeee guibg=#000000 guisp=#000000 gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
"hi Label -- no settings --
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#88dd88 guibg=#949698 guisp=#949698 gui=NONE ctermfg=114 ctermbg=246 cterm=NONE
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi Delimiter -- no settings --
"hi Statement -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
"hi Character -- no settings --
"hi Float -- no settings --
"hi Number -- no settings --
"hi Boolean -- no settings --
"hi Operator -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi Define -- no settings --
"hi Function -- no settings --
hi FoldColumn guifg=#ffffff guibg=#333333 guisp=#333333 gui=NONE ctermfg=15 ctermbg=236 cterm=NONE
"hi PreProc -- no settings --
"hi EnumerationName -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi VertSplit -- no settings --
"hi Exception -- no settings --
"hi Keyword -- no settings --
"hi Type -- no settings --
"hi DiffChange -- no settings --
"hi Cursor -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no setings --
hi PMenu guifg=#dddddd guibg=#545658 guisp=#545658 gui=NONE ctermfg=253 ctermbg=240 cterm=NONE
"hi SpecialKey -- no settings --
"hi Constant -- no settings --
"hi DefinedName -- no settings --
"hi Tag -- no settings --
"hi String -- no settings --
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi Repeat -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Structure -- no settings --
"hi Macro -- no settings --
"hi Underlined -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
hi mbenormal guifg=#e5e5e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#226622 guibg=#55ff55 guisp=#55ff55 gui=NONE ctermfg=22 ctermbg=83 cterm=NONE
hi cursorim guifg=#226622 guibg=#55ff55 guisp=#55ff55 gui=NONE ctermfg=22 ctermbg=83 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#000000 guibg=#AFC900 guisp=#AFC900 gui=italic ctermfg=NONE ctermbg=148 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi htmlitalic guifg=#000000 guibg=#ffffff guisp=#ffffff gui=italic ctermfg=NONE ctermbg=15 cterm=NONE
hi htmlboldunderlineitalic guifg=#000000 guibg=#ffffff guisp=#ffffff gui=bold,italic,underline ctermfg=NONE ctermbg=15 cterm=bold,underline
hi htmlbolditalic guifg=#000000 guibg=#ffffff guisp=#ffffff gui=bold,italic ctermfg=NONE ctermbg=15 cterm=bold
hi htmlunderlineitalic guifg=#000000 guibg=#ffffff guisp=#ffffff gui=italic,underline ctermfg=NONE ctermbg=15 cterm=underline
hi htmlbold guifg=#000000 guibg=#ffffff guisp=#ffffff gui=bold ctermfg=NONE ctermbg=15 cterm=bold
hi htmlboldunderline guifg=#000000 guibg=#ffffff guisp=#ffffff gui=bold,underline ctermfg=NONE ctermbg=15 cterm=bold,underline
hi htmlunderline guifg=#000000 guibg=#ffffff guisp=#ffffff gui=underline ctermfg=NONE ctermbg=15 cterm=underline
"hi default -- no settings --
hi keyword guifg=#CCEE00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi plsqlconditional guifg=#99CCFF guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlstorage guifg=#f5deb3 guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#F0D0C0 guibg=NONE guisp=NONE gui=italic ctermfg=224 ctermbg=NONE cterm=NONE
hi plsqlrepeat guifg=#99CCFF guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlfunction guifg=#FFAAAA guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi attribute guifg=#CCCCCC guibg=NONE guisp=NONE gui=italic ctermfg=252 ctermbg=NONE cterm=NONE
"hi semicolon -- no settings --
