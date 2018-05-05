syntax enable
set number
set background=dark
set clipboard+=unnamedplus

" Splits make more sense
set splitbelow
set splitright

" Tabs are two spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
 
" Easy split navigation 
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Spell-check set to F6:
map <F6> :setlocal spell! spelllang=em_us,es

" vim-plug (plugins)
call plug#begin('~/.vim/bundle')
" Basic settings
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate' 

" Add-ons
Plug 'junegunn/vim-emoji'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'dylanaraps/wal.vim'

" Search
Plug 'kien/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/NERDtree'

" Javascript
Plug 'mxw/vim-jsx'
Plug 'https://github.com/othree/javascript-libraries-syntax.vim', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'thinca/vim-textobj-function-javascript', { 'for': [ 'javascript', 'js', 'jsx' ]}
Plug 'pangloss/vim-javascript'

" Graphql
Plug 'jparise/vim-graphql'

" Git
Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Formatting & Completion
Plug 'prettier/vim-prettier'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
let g:deoplete#enable_at_startup = 1
call plug#end()

colorscheme wal
" nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20

" vim-emoji
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('monkey')
set completefunc=emoji#complete

" Airline 
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" Ctrlp 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip   
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Ale Options
let g:ale_linters = {
\     'javascript':['eslint', 'prettier', 'jsx', 'graphql']
\}
let g:ale_sign_error = emoji#for('tired_face')
let g:ale_sign_warning = emoji#for('fearful')

" Rainbow Parenthesis Options
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rpt_max = 16
let g:rpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle 
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
