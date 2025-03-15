set nocompatible              " be iMproved, required
filetype off                  " required

" Leader
let mapleader = "-"

" LocalLeader
let maplocalleader = "\\"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'bling/vim-airline'
" Plugin 'scrooloose/nerdtree'
" Plugin 'elixir-lang/vim-elixir'
Plugin 'chriskempson/base16-vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'L9'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'roman/golden-ratio'
Plugin 'lokaltog/vim-powerline'
Plugin 'elzair/vim-line-numbers'
Plugin 'thaerkh/vim-workspace'
Plugin 'jremmen/vim-ripgrep'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'ReplaceWithRegister'
Plugin 'christoomey/vim-sort-motion'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Align'
Plugin 'SQLUtilities'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'digitaltoad/vim-pug'
Plugin 'smith/javascriptlint.vim'
Plugin 'splattael/rufo-vim'
Plugin 'jreybert/vimagit'
Plugin 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

syntax enable
let base16colorspace=256  " Access colors present in 256 colorspace
set number

" NERDTree Settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
map <C-t> :NERDTree<CR>

" vim-tmux-navigator settings
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" FZF plugin confs
nnoremap <Leader>f/ :Files<CR>
nnoremap <Leader>b/ :BLines<CR>
nnoremap <Leader>t/ :Tags<CR>
nnoremap <Leader>:/ :History:<CR>

" vim-fugitive
map gb :Gblame<CR>

" vim-mix-format
map mf :MixFormat<CR>

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

let ruby_space_errors = 1

" Use system clipboard as default register
set clipboard=unnamed

" chiel92/vim-autoformat
nnoremap <Leader>g :Rg

" yggdroot/indentline
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_faster = 1

" mix test
map mt :!mix test %<CR>

" scrooloose/nerdtree
" Find a file in the nerd tree
map <Leader>r :NERDTreeFind<CR>

autocmd BufRead,BufNewFile *.md setlocal spell

autocmd BufWinLeave * !MixFormat %:p

" SQLUtilities
vmap <silent>sf <Plug>SQLU_Formatter<CR>

set belloff=all

" xolox/vim-notes
" Opens up new note
map <Leader>n/ :Note<CR>
" Start a new note with selected text
map <Leader>ns/ :NoteFromSelectedText<CR>
" edit existing note
nnoremap <Leader>n :Note
" delete existing note
nnoremap <Leader>nd :DeleteNote
nnoremap <Leader>ns :SearchNotes

" rust shortcuts
map rcb :!cargo build<CR>
map rcr :!cargo run<CR>

" bundle exec rspec
map ber :!bundle exec rspec %<CR>

set nocursorline

