" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" 自动补全的插件
" Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'tweekmonster/deoplete-clang2'
Plug 'Shougo/echodoc.vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

Plug 'tomasr/molokai'
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline' " 状态栏增强
Plug 'vim-airline/vim-airline-themes'
Plug 'skywind3000/asyncrun.vim'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}

Plug 'jiangmiao/auto-pairs' " 括号对齐
Plug 'easymotion/vim-easymotion' "快速移动光标
Plug 'w0rp/ale' "语法检查

Plug 'junegunn/goyo.vim' "注意力集中
Plug 'junegunn/limelight.vim'

" Plug 'vim-scripts/YankRing.vim'

Plug 'terryma/vim-smooth-scroll'

Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()


" **************系统设置**************
set number
set backspace=indent,eol,start "indent 表示可删除自动缩进产生的空格，eol 可删除回车，start 可删除此次插入前的字符
set cursorline
set splitbelow
set splitright
set noshowmode  "重要，在insert模式下，不显示--INSERT--
" set cmdheight=2
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

" 使用 tab 选择自动补全的项目
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" normal模式下支持删除换行
nnoremap <cr> o<Esc>
nnoremap <BS> a<BS><Esc>

autocmd FileType python nnoremap <LocalLeader>f :0,$!yapf<CR>
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>
" ***************插件设置*************
" colorscheme
colorscheme molokai

" airline
" 显示 buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 "显示tab的数字编号 
" configure whether buffer numbers should be shown. >
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_close_button = 0

let g:airline_theme='tomorrow'
let g:airline#extensions#ale#enabled = 1

" 利用 airline Tagbar 切换
nmap t1 <Plug>AirlineSelectTab1
nmap t2 <Plug>AirlineSelectTab2
nmap t3 <Plug>AirlineSelectTab3
nmap t4 <Plug>AirlineSelectTab4
nmap t5 <Plug>AirlineSelectTab5
nmap t6 <Plug>AirlineSelectTab6
nmap t7 <Plug>AirlineSelectTab7
nmap t8 <Plug>AirlineSelectTab8
nmap t9 <Plug>AirlineSelectTab9
nmap t[ <Plug>AirlineSelectPrevTab
nmap t] <Plug>AirlineSelectNextTab

" nerdtree
nmap <f9> :NERDTreeToggle<CR>
" nerdcommenter
let g:NERDSpaceDelims = 1 " 注释后面自动加空格
" tagbar
nmap <f10> :TagbarToggle<CR>
let g:tagbar_autofocus = 1



" 底部开启一个终端
" nmap t<Enter> :bo sp term://zsh\|resize 5<CR>i

" 执行python脚本
nmap <f5> :wa<cr>:bo vsp term://python % <cr>

" easymotion
" 空格 调用光标跳转
nmap <space> <leader><leader>s

" goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" yankring
" let g:yankring_replace_n_pkey = '<m-p>'
" let g:yankring_replace_n_nkey = '<m-n>'
" nmap <leader>y :YRShow<cr>
" let g:yankring_history_file='.yankring_history_file'

" Use deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
let g:echodoc#enable_at_startup = 1
set shortmess+=c "不显示匹数数量等信息

" ale
" 默认不自动开启，提高速度 
let g:ale_enabled = 0
nmap <F11> :ALEToggle<CR>

" smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>


" repeat 放在所有map最后
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
