" I am currently building my .vimrc off of the default vundle configuration 
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 "Bundle 'tpope/vim-fugitive' " A git wrapper
 Bundle 'Lokaltog/vim-easymotion'
 "Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} " Short Hand HTML
 "Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'  
 Bundle 'FuzzyFinder'
 Bundle 'minibufexpl.vim'
 Bundle 'The-NERD-tree'
 Bundle 'The-NERD-Commenter'
 Bundle 'Syntastic'
 Bundle 'ShowMarks'
 Bundle 'SuperTab'
 " non github repos
 "Bundle 'git://git.wincent.com/command-t.git' "TODO Compile vim with ruby support
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use the arrows to something usefull
 map <right> :bn<cr>
 map <left> :bp<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set cindent

" show line number
set number 
" remap leader
let mapleader = " "

" set longer history
set history=1000

" Fast saving
nmap <leader>w :w!<cr>

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink
" visual bell
set vb

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MiniBufExplorer 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>b :MiniBufExplorer<cr>
map <Leader>c :CMiniBufExplorer<cr>
map <Leader>u :UMiniBufExplorer<cr>
map <Leader>t :TMiniBufExplorer<cr>

autocmd BufRead,BufNew :call UMiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Most Recently Used Files (MRU plugin)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>ru :MRU<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>nt :NERDTreeToggle<cr>
  
" if the last window is NERDTree, then close Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
let g:NERDTreeDirArrows=0 

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1


let NERDTreeShowLineNumbers=1
let NERDTreeMinimalUI=1
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Show Marks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:showmarks_enable=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_enable_signs=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy Finder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>f :FufFile **/<CR>
