call plug#begin(stdpath('data') . '/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
"Plug 'lervag/vimtex'
Plug 'chrisbra/csv.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"----------Color Schemes--------------------
Plug 'arcticicestudio/nord-vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'lighthaus-theme/vim-lighthaus'
"Plug 'kaicataldo/material.vim', { 'branch': 'main' }

call plug#end()

"----------Lighthaus Color Scheme-----------
"colorscheme lighthaus
"let g:airline_theme='lighthaus'

"----------Material Color Scheme -----------
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'darker'
"colorscheme material
"let g:airline_theme = 'material'

"----------Nord Color Scheme----------------
colorscheme nord
let g:airline_theme = 'nord'

"----------Dracula Color Scheme-------------
"let g:dracula_colorterm = 0
"colorscheme dracula
"let g:airline_theme='dracula'

let g:deoplete#enable_at_startup = 1
let maplocalleader = ","
nnoremap <localleader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 45
let g:NERDTreeWinPos = "right"

if (has('termguicolors'))
  set termguicolors
endif

"set guifont="FiraCode Nerd Font 14"

let g:airline_powerline_fonts = 1
set number
"See invisible characters
set list listchars=tab:-→»,trail:ø,eol:↓

"set expandtab
"set autoindent
"set softtabstop=4
"set shiftwidth=2
"set tabstop=4

"   Enable mouse click for nvim or not
set mouse=
"   Fix cursor replacement after closing nvim
"set guicursor=
"   Shift + Tab does inverse tab
"inoremap <S-Tab> <C-d>

"   wrap to next line when end of line is reached
"set whichwrap+=<,>,[,]
