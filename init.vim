filetype off                   " required!

call plug#begin()

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

"  Plugins
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tlib_vim'
Plug 'tomtom/tcomment_vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-endwise'
Plug 'nixprime/cpsm'
Plug 'rking/ag.vim'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'szw/vim-tags'
Plug 'tpope/vim-rbenv'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat' " Enables repeat on plugins such as vim-surround
Plug 'dkprice/vim-easygrep'
Plug 'SirVer/ultisnips'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'janko-m/vim-test'
Plug 'elmcast/elm-vim'
Plug 'KabbAmine/zeavim'

" Neovim extensions
Plug 'neomake/neomake'
Plug 'kassio/neoterm'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Language plugins
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'tpope/vim-haml'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'smerrill/vcl-vim-plugin'
Plug 'mustache/vim-mustache-handlebars'
Plug 'Keithbsmiley/swift.vim'
Plug 'rust-lang/rust.vim'
Plug 'isRuslan/vim-es6'
Plug 'briancollins/vim-jst'
Plug 'elixir-lang/vim-elixir'
Plug 'dag/vim2hs'
Plug 'elmcast/elm-vim'
Plug 'digitaltoad/vim-pug'

" Themes
Plug 'squarefrog/tomorrow-night.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'morhetz/gruvbox'

call plug#end()

filetype plugin indent on     " required!

"----------------------------------------------------------------------- Colors
set background=dark
colorscheme gruvbox

"------------------------------------------------------------------------- Misc
set encoding=utf-8 "default character encoding
set exrc "enable per-directory .vimrc files
set secure "disable unsafe commands in local .vimrc files
set nobackup
set noswapfile
set hidden

"-------------------------------------------------------------------- Workspace

set nu
set rnu "relative line numbers
set ruler "column and row position
set colorcolumn=100 "column guide on the right
set scrolloff=5 "when scrolling, stay this far from extremes of buffer
set list listchars=tab:\ \ ,trail:· "show trailing whitespace
set smartindent "indent wisely
set autoindent "auto-indent
set backspace=indent,eol,start "lazy backspacing
set showcmd "show the current command
set laststatus=2 "always show the status line. Always!
set lazyredraw

"----------------------------------------------------------------------- Syntax
syntax on "turn on syntax highlighting

"----------------------------------------------------------------------- Search
set ignorecase "case-insenitive searching
set smartcase "do a case-sensitive search if uppercase letters are present
set hlsearch "highlight search results
set incsearch
map <esc><esc> :noh<CR>

"--------------------------------------------------------------------- Wildmenu
set wildmenu "turn on wildmenu
set wildmode=list:longest,full "default to longest match first

" ignore directories
set wildignore=**/node_modules/**
set wildignore+=*/cookbooks/**
set wildignore+=*/tmp/**
set wildignore+=*/build/**
set wildignore+=*.lock
set wildignore+=*/public/uploads/**
set wildignore+=*/bin/**

"------------------------------------------------------------------------- Tabs
set tabstop=2 "how wide is a tab?
set shiftwidth=2 "how much to reindent
set softtabstop=2 "use 2 spaces
set expandtab "we use spaces, not hard tabs
set formatoptions=qrn1 "I've forgotten what this does, but it helps...somehow

"------------------------------------------------------------------------- Mappings
map <leader>c <c-_><c-_>
map <leader>no :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
nmap nw :set nowrap<CR>

"------------------------------------------------------------------------- MultiLine
let g:multi_cursor_exit_from_insert_mode = 0

" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

map <leader>s :w<enter>
map <leader>q :q<enter>
map <leader>a :A<enter>
map <leader>f :Ag<space>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

" Switch to next selected file
map <leader>cn :cnext<cr>
map <leader>cp :cprevious<cr>

" Replace native explorer with nerdtree
let NERDTreeHijackNetrw=1

"quickly edit vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader><leader>v :source $MYVIMRC<cr>

" clean whitespace in file
nnoremap <leader>j :FixWhitespace<cr>
"-------------------------------------------------------------------- Filetypes
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.slim set filetype=slim
au BufRead,BufNewFile Gemfile set filetype=ruby
au BufRead,BufNewFile config.ru set filetype=ruby
au BufRead,BufNewFile *.csx.erb,*.cjsx.erb set filetype=coffee

"---------------------------------------------------------------------- Airline
let g:airline_powerline_fonts = 1

" ---------------------------------------------------------------------- FZF

nnoremap <C-p> :GitFiles<CR>
nnoremap <C-t>f :Files<CR>
nnoremap <C-t>F :GitFiles<CR>
nnoremap <C-t>b :Buffers<CR>
nnoremap <C-t>L :Lines<CR>
nnoremap <C-t>l :BLines<CR>
nnoremap <C-t>T :Tags<CR>
nnoremap <C-t>t :BTags<CR>
nnoremap <C-t>m :Marks<CR>
nnoremap <C-t>w :Windows<CR>
nnoremap <C-t>h :History<CR>
nnoremap <C-t>H :History:<CR>
nnoremap <C-t>/ :History/<CR>

"----------- Copy and paste in clipboard
set clipboard+=unnamedplus

"-------------------------------------------- Vim Golang
" Syntax-highlighting for Functions, Methods and Structs
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Automatically insert import paths
let g:go_fmt_command = "goimports"

" Go run and build
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" Go Docs
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" Go Definitions
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Colorschemes for languages
autocmd FileType elixir colorscheme atom-dark-256
" map <leader>t :!mix test<CR>

" --------------------------------------------  neoterm
let g:neoterm_position = 'vertical'
let g:neoterm_automap_keys = ',tt'
let g:neoterm_shell = "zsh"

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" make test commands execute using neoterm
let test#strategy = "neoterm"
" vim.test hotkeys
nnoremap <silent> <leader>rt :TestSuite<cr>
nnoremap <silent> <leader>rf :TestFile<cr>
nnoremap <silent> <leader>rn :TestNearest<cr>
nnoremap <silent> <leader>rr :TestLast<cr>
" nnoremap <silent> <leader>rm :Ttest<cr>

let test#javascript#jest#file_pattern = '\v__tests__/.*[_-]test\.(js|jsx|coffee)$'

" fugitive shortcuts
nnoremap <silent> <leader>gb :Gblame<cr>
nnoremap <silent> <leader>gs :Gstatus<cr>
nnoremap <silent> <leader>gc :Gcommit<cr>

:tnoremap <Esc> <C-\><C-n>

" hide/close terminal
nnoremap <silent> <leader>th :call neoterm#close()<cr>
" show terminal
nnoremap <silent> <leader>ts :call neoterm#open()<cr>
" clear terminal
nnoremap <silent> <leader>tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> <leader>tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate
command! Ttest :T npm run test
command! Tconsole :T bx rails console

" Git commands
command! -nargs=+ Tg :T git <args>

" ------------------------------------------- EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" ------------------------------------------- Neomake
let g:neomake_ruby_enabled_makers = ['rubocop', 'reek', 'mri']
let g:neomake_elixir_enabled_makers = ['credo']
let g:neomake_css_enabled_makers = ['csslint']
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost * Neomake

" ------------------------------------------- Deoplete
let g:deoplete#enable_at_startup = 1

" convert old ruby hash syntax
command! ConvertHashSyntax :%s/:\([^ ]*\)\(\s*\)=>/\1:/cg | noh

" convert double to single quotes
command! ConvertStringQuotes :%s/"\(.\{-}\)"/'\1'/cg | noh

" auto rubocop current file
command! ConvertCurrentFileRubocop :! rubocop %:p -a

" run node for current file
command! NodeCurrentFile :T node %:p

set mouse=a

let g:elm_format_autosave=1

" zeal
nnoremap <leader>gz :!zeal "<cword>"&<CR><CR>
