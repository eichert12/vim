filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set hidden
set background=dark
set nocompatible
set hlsearch
set incsearch
set ignorecase
set ruler
set showcmd
set showmatch
set showmode
set tabstop=2
set shiftwidth=2
set expandtab
set wmh=0
set cindent
set lines=65
set columns=180
set guifont=Meslo\ LG\ M\ DZ:h18
set nowrap 
set number
set guioptions-=T
set guioptions-=m
set wildmode=list:longest
set fuoptions=maxvert,maxhorz

colorscheme solarized

cd ~/development/rivermark

" Settings for VimClojure
let g:clj_highlight_builtins=1      " Highlight Clojure's builtins
let g:clj_paren_rainbow=1           " Rainbow parentheses'!

" map option N to new tab
inoremap <D-n> <C-O>:tabnew<CR>
nnoremap <D-n> :tabnew<CR>
onoremap <D-n> <C-C>:tabnew<CR>
vnoremap <D-n> :tabnew<CR>

" set mappings
" control j and control k switch panes and maximize
nmap <C-J> <C-W>j<C-W>_
nmap <C-K> <C-W>k<C-W>_

" block commenting mappings , and comment characteer will add lhs comment
" character ,c will clear
map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
map ,> :s/^/> /<CR>
map ,” :s/^/\”/<CR>
map ,% :s/^/%/<CR>
map ,! :s/^/!/<CR>
map ,; :s/^/;/<CR>
map ,- :s/^/–/<CR>

command FixBreaks %s/\r/\r/g

map ,c :s/^\/\/\\|^–\\|^> \\|^[#”%!;]//<CR>
map \t :FuzzyFinderTextMate<CR>
map \p :NERDTree<CR>

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
end
