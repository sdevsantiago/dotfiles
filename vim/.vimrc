" .vimrc
" ======
" Main configuration file for Vim
" 
" Compatibility {{{
" =======================================

set nocompatible			" disable compatibility to old-time vi

" }}}

" Global {{{

filetype plugin on			" enable file type detection and load plugins

" }}}

" Interface {{{
" =======================================

set termguicolors			" enable 24 bit colors
syntax enable				" enable syntax highlighting

set number				" add line numbers
set relativenumber			" add relative line numbers
set cursorline

set nowrap				" disable line wrapping

set showmatch				" show matching brackets
set showmode				" show current mode
set showcmd				" show last command

set splitbelow				" :split opens below
set splitright				" :vsplit opens right

colorscheme retrobox
set background=dark

" }}}

" Search {{{
" =======================================

set ignorecase                          " case insensitive search...
set smartcase                           " ...unless casing is used in search

set hlsearch                            " highlight search results
set incsearch                           " incremental search

set path+=**

" }}}

" Indentation {{{
" =======================================

set autoindent                          " indent a new line the same amount as the previous line
set smartindent                         " add extra indentation after certain keywords or braces

filetype indent on                      " allow auto-indenting depending on file type

" }}}

" Edition {{{
" =======================================

set undofile                            " enable persistent history
set undodir=~/.vim/.undo//              " define undo directory

set backup                              " enable backup files
set backupdir=~/.vim/.backup//          " define backup directory

set swapfile                            " enable swapfiles
set directory=~/.vim/.swap//            " define swapfiles directory

" }}}

" Commodities {{{
" =======================================

set mouse=a                             " enable mouse support
set scrolloff=999                       " keep current line centered vertically
set sidescrolloff=9                     " keep current line centered horizontally

set foldmethod=manual                   " set manual folding method as default

" autofolding script
augroup AutoFolds
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

set belloff=all                         " disable both visual and audio bells

" }}}

" Performance {{{
" =======================================

set lazyredraw                          " disable screen update during macro or script execution
set ttyfast

set wildmenu
set wildmode=longest:list,full          " get bash-like tab completions
set completeopt=menuone,noselect

" }}}

" Keybinds {{{
" =======================================

let mapleader = " "

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Window splits {{{

" create horizontal split
nnoremap <leader>- :split<CR>
" create vertical split
nnoremap <leader>\ :vsplit<CR>

" }}}

" Tabs {{{

" create a new tab
nnoremap <leader>tt :tabnew<CR>
" create a new tab with current file
nnoremap <leader>tT :tabnew %<CR>
" move to next tab
nnoremap <leader>tn :tabnext<CR>
" move to previous tab
nnoremap <leader>tp :tabprev<CR>
" close current tab
nnoremap <leader>tq :tabclose<CR>
" close all but current tab
nnoremap <leader>tO :tabonly<CR>

" }}}

" Buffers {{{

" move to next buffer
nnoremap <leader>bn :bnext<CR>
" move to previous buffer
nnoremap <leader>bp :bprev<CR>
" delete current buffer
nnoremap <leader>bd :bdelete<CR>

" }}}

" Search {{{

" fuzzy find (requires fzf.vim)
nnoremap <leader>ff :Files<CR>
" ripgrep (requires fzf.vim)
nnoremap <leader>rg :Rg<CR>
" open explorer
nnoremap <leader>fO :Explore<CR>
" list buffers and move to selected
nnoremap <leader>fb :Buffers<CR>
" list changes made and undo selected
nnoremap <leader>fu :undolist<CR>:u<space>
" hide search highlight
nnoremap <silent> <Esc> <Esc>:nohlsearch<CR><Esc>

" }}}

" }}}

" Plugins {{{
" =======================================

" As of version 8 or superior, Vim implements its own package manager.
" All files are located in ~/.vim/pack/{packName}/start/{pluginName}/autoload
"
" Note: if on Windows, replace .vim folder by vimfiles

" vim-rainbow
let g:rainbow_active = 1

" }}}
