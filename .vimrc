set relativenumber
set number
set incsearch
set breakindent
set tabstop=2
set shiftwidth=2

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

vnoremap j gj
vnoremap k gk

" auto break long lines in tex files
autocmd BufRead *.tex set tw=78

" Fix colors inside tmux
set background=dark
set t_Co=256

" Autoformat rust files on save
let g:rustfmt_autosave = 1

" Register rust language server
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Rust file detection and syntax highlighting
Plugin 'rust-lang/rust.vim'

" Tab numbers
Plugin 'mkitt/tabline.vim'

" Auto close brackets
Plugin 'townk/vim-autoclose'

"Language server
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Collection of language packs
Plugin 'sheerun/vim-polyglot'

" Vue highlighting
Plugin 'posva/vim-vue'

"Prettier
Plugin 'prettier/vim-prettier'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
