" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" 自动补全的插件
Plug 'roxma/nvim-completion-manager'
" Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-jedi'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline' " 状态栏增强
Plug 'vim-airline/vim-airline-themes'
Plug 'skywind3000/asyncrun.vim'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}

call plug#end()

" **************系统设置**************
set number
set backspace=indent,eol,start "indent 表示可删除自动缩进产生的空格，eol 可删除回车，start 可删除此次插入前的字符
set cursorline

" terminal-mode
" To map <Esc> to exit terminal-mode:
    tnoremap <Esc> <C-\><C-n>

" To simulate |i_CTRL-R| in terminal-mode:
" tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" To use `ALT+{h,j,k,l}` to navigate windows from any mode:
    tnoremap <A-h> <C-\><C-N><C-w>h
    tnoremap <A-j> <C-\><C-N><C-w>j
    tnoremap <A-k> <C-\><C-N><C-w>k
    tnoremap <A-l> <C-\><C-N><C-w>l
    inoremap <A-h> <C-\><C-N><C-w>h
    inoremap <A-j> <C-\><C-N><C-w>j
    inoremap <A-k> <C-\><C-N><C-w>k
    inoremap <A-l> <C-\><C-N><C-w>l
    nnoremap <A-h> <C-w>h
    nnoremap <A-j> <C-w>j
    nnoremap <A-k> <C-w>k
    nnoremap <A-l> <C-w>l

" ***************插件设置*************
nmap <F9> :NERDTreeToggle<cr>

colorscheme molokai

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" 显示 buffers
let g:airline#extensions#tabline#enabled = 1
" powerline支持
"let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

nmap <f10> :TagbarToggle<CR>

let g:NERDSpaceDelims = 1 " 注释后面自动加空格

