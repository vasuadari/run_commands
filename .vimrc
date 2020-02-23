set nocompatible              " be iMproved, required
filetype off                  " required

" Leader
let mapleader = "-"

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
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'chriskempson/base16-vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'L9'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'roman/golden-ratio'
Plugin 'lokaltog/vim-powerline'
Plugin 'elzair/vim-line-numbers'
Plugin 'thaerkh/vim-workspace'
Plugin 'mhinz/vim-mix-format'
Plugin 'chiel92/vim-autoformat'
Plugin 'rking/ag.vim'
" Plugin 'yggdroot/indentline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'ReplaceWithRegister'
Plugin 'christoomey/vim-sort-motion'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Align'
Plugin 'SQLUtilities'

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
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
nnoremap <Leader>f/ :Files<CR>
nnoremap <Leader>b/ :BLines<CR>
nnoremap <Leader>t/ :Tags<CR>
nnoremap <Leader>:/ :History:<CR>

" Markdown
let vim_markdown_preview_hotkey='<C-m>'

" vim-workspace
" nnoremap <leader>s :ToggleWorkspace<CR>
" let g:workspace_session_name = 'Session.vim'
" let g:workspace_session_directory = $HOME . '/.vim/sessions/'
" let g:workspace_autosave_always = 1

" vim-fugitive
map gb :Gblame<CR>

" vim-mix-format
map mf :MixFormat<CR>

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")

let ruby_space_errors = 1

" Use system clipboard as default register
set clipboard=unnamed

" ag.vim
nnoremap <Leader>g :Ag

" yggdroot/indentline
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_faster = 1

" mix test
map mt :!mix test %<CR>

" scrooloose/nerdtree
map <leader>r :NERDTreeFind<cr>

autocmd BufRead,BufNewFile *.md setlocal spell

" SQLUtilities
vmap <silent>sf <Plug>SQLU_Formatter<CR>
