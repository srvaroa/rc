" vim: ff=unix ts=4 ss=4 tw=72 fdm=marker foldmarker={,}
colorscheme varoa
syntax on

" ASSORTED CONFS {
" let backspace past start of edit
"     autoindenting and start of line
set backspace=start,indent,eol
set colorcolumn=81
set completeopt=menu,preview " show a menu, and tips if available
" don't scan included files
" could be more granular:
" set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!
set complete-=i
set confirm
set cursorline " highlight cursor line
set diffopt=vertical,filler,iwhite " options for diff mode
set encoding=utf-8
set errorformat=%m\ in\ %f\ on\ line\ %l
set expandtab " replace tab with tabstop chars
set fdm=marker
set ff=unix
set formatoptions=qrn1 " testing, before t
set hlsearch " highlight all search matches
set ignorecase
set incsearch " find while searching
set laststatus=2
set linebreak
set list
" set listchars=tab:»\ ,trail:⬞,precedes:«,extends:»,nbsp:⬞
set listchars=tab:»\ ,precedes:«,extends:»
set modeline
set modelines=5
set mouse=a
set nocompatible
set nostartofline " make gg and G keep the column
set number
set path=** " ^wf finds the class file under cursor
set ruler
set scrolloff=3
set shiftwidth=4
set softtabstop=4 " how many cols when tabbing in insert mode
set showcmd
set showmatch " show matching braces when indicator is over
set showmode
set smartcase
set smartindent
" in :find vim will try adding these suffixes
set suffixesadd+=.scala
set suffixesadd+=.java
set tabstop=4
set tags=tags;
set ttyfast " improve scrolling
" set ttymouse=xterm2 " so that the mouse works inside tmux
set tw=72
set viminfo='20,<50,s10,h,% " remember some stuff after quiting vim:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,idea,target,*.xml,*.html
set wildmenu " file/command completion with results count, allow tabbing
set wildmode=longest,full
set wrap
set wrapscan " make search go back to start of file
" }

" MAPPINGS {
" change personal modifier key to , instead of \.
let mapleader = ","
" Get rid of ex mode by accident
nnoremap Q <nop>
" Clear highlight
nnoremap <C-h> :noh<CR>
" deal with readonly
cmap w!! %!sudo tee > /dev/null %
" disable arrow keys (or make them useful)
map <up> <nop>
map <down> <ESC><C-W>w
map <left> <ESC>:tabp<CR>
map <right> <ESC>:tabn<CR>
inoremap <up> <nop>
inoremap <down> <ESC><C-W>w
inoremap <left> <ESC>:tabp<CR>
inoremap <right> <ESC>:tabn<CR>
" make - support /, one of those benefits of english keyboards
nnoremap - /
" edit and source .vimrc
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" auto format paragraph, return to initial point
nnoremap <c-p> mxgqap<CR>`x
" wrap words in things, there must be a more elegant way.
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>` viw<esc>a`<esc>hbi`<esc>lel
" operator pending, inner prev/next brackets
onoremap ip( :<c-u>normal! F)vi(<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
" operator pending, inner prev/next sgl quotes
onoremap ip' :<c-u>normal! F'vi'<cr>
onoremap in' :<c-u>normal! f'vi'<cr>
" operator pending, inner prev/next dbl quotes
onoremap ip" :<c-u>normal! F"vi"<cr>
onoremap in" :<c-u>normal! f"vi"<cr>
" sane j, k movements for screen line, not file
nnoremap j gj
nnoremap k gk
" cclose
nnoremap <leader>x  :cclose
" comment line
nnoremap <leader>/ 0i//<esc>
" comment visual area
vnoremap <leader>7 :s/^/\/\//g<cr>
" quick vertical, horizontal split
nnoremap <leader>! :vs<cr><C-w>w
nnoremap <leader>_ :sp<cr><C-w>w
" clear trailing whitespace
" nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" remap control-space to autocompletion
" see http://robots.thoughtbot.com/post/27041742805/vim-you-complete-me
inoremap <Nul> <C-N>
" I need no help
inoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <F1> <ESC>
" Y works as D or C, yank to EOL
map Y y$
" a new log entry
func! LogEntry ()
    return strftime("%Y%m%d {{{\n}}}\n")
endfunc
inoremap <C-l> <c-R>=LogEntry()<cr><esc>kkyypVr-o

" merge: find next conflict
nnoremap <C-i> /=====<enter>

" }

" REPLACEMENTS {
iab <expr> tnow strftime("%Y%m%d %H:%M:%S")
iab <expr> tdat strftime("%Y-%m-%d")

" }

" SYNTAX ENFORCEMENT {
" are these really necessary? ftdetect/* files should do this
au BufNewFile,BufRead *.phtml set filetype=php
au BufRead,BufNewFile *.scala set filetype=scala
au BufRead,BufNewFile *.java set filetype=java
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.cc set filetype=cpp
au BufRead,BufNewFile *.hh set filetype=cpp
au BufRead,BufNewFile *.c set filetype=c
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd Filetype java set makeprg=javac\ %
autocmd Filetype scala set makeprg=scalac\ %
" Vundle needs filetype off
filetype plugin indent on " filetype and php autocomplete. The indent is for vundle
filetype off
" }

" { VUNDLE SETUP (github.com/gmarik/vundle)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" json support
" Plugin 'elzr/vim-json'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'tfnico/vim-gradle'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-sleuth' " Infer buffer settings (e.g. tab/spaces scheme)
" syntastic
" Bundle 'scrooloose/syntastic'

" NOTE: comments after Bundle command are not allowed..
call vundle#end()
filetype plugin indent on
" }

" VIM-AIRLINE {
" let g:airline#extensions#tabline#enabled = 1
set lazyredraw " required by vim-airline, so far
" }

" { NERDTREE
" toggle)
nnoremap <leader>n :NERDTreeToggle<CR>
" find current file in tree
nnoremap <leader>s :NERDTreeFind<CR>
let NERDTreeShowHidden=1
"}

" { FZF.VIM
nnoremap <leader>f :Files<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>b :Buffers<CR>

nnoremap <leader>d :call fzf#vim#tags("'" . expand('<cword>'))<CR>"'")
" }

" { FUGITIVE
" Ggrep -> quickfix window
autocmd QuickFixCmdPost *grep* cwindow
" }

" { VIM-TAGLIST
" vim-taglist toggle
nnoremap <leader>l :TlistToggle<CR>
" }

" For Java {
" http://stackoverflow.com/questions/6411979/compiling-java-code-in-vim-more-efficiently/14727153#14727153
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F3> :cprevious<Return>
map <F4> :cnext<Return>
" compile
map <F5> :wa<CR>:compiler ./gradlew<CR>:make assemble<CR>:cw 4<CR>
" }
"
" For Go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
