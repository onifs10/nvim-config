set number
set guicursor=
set relativenumber
set scrolloff=8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch

syntax enable
filetype plugin indent on

let g:javascript_plugin_flow = 1
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tomlion/vim-solidity'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'prettier/vim-prettier'
Plug 'pantharshit00/vim-prisma'
Plug 'wakatime/vim-wakatime'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'rust-lang/rust.vim'
Plug 'hhvm/vim-hack'
Plug 'github/copilot.vim'
call plug#end()

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

let g:rainbow_active = 1
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
" let g:gruvbox_sign_column = 'orange'
" autocmd vimenter * ++nested colorscheme gruvbox

highlight Cursor guifg=white guibg=orange
highlight iCursor guifg=white guibg=darkorange
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10



let mapleader = " "

nnoremap <leader>pv :Ex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader>t :term <CR>
nnoremap <leader>gp :PrettierAsync <CR>
