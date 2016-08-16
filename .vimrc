" 开启256色支持
set t_Co=256
" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 回车自动缩进(cindent, smartindent, autoindent)
" 可以很好的识别出C和Java等结构化程序设计语言，
" 并且能用C语言的缩进格式来处理程序的缩进结构。
" set cindent

" 在这种缩进形式中，新增加的行和前一行使用相同的缩进形式。
" set autoindent

" 在这种缩进模式中，每一行都和前一行有相同的缩进量，
" 同时这种缩进形式能正确的识别出花括号，当遇到右花括号（}），则取消缩进形式。
" 此外还增加了识别C语言关键字的功能。如果一行是以#开头的，那么这种格式将会被特殊对待而不采用缩进格式。
set smartindent
" 一个Tab占用的列数（空格个数）
set tabstop=4
" 缩进列数
set shiftwidth=4
" 键入一次Tab，占用的列数，
" 当没有设置expandTab时
" 超过tabstop的，自动变成Tab（多余的变成空格）
" 不足tabstop的，直接变成空格
set softtabstop=4
" Tab替换成空格
" set expandtab
" set noexpandtab

" Pathogen load
execute pathogen#infect()
call pathogen#helptags()
"依文件类型设置自动缩进
filetype plugin indent on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 开启文件类型侦测
" filetype on


" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

"显示当前的行号列号：
set ruler

" 总是显示状态栏
set laststatus=2

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 高亮显示当前行/列
set cursorline
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" 高亮显示搜索结果
set hlsearch

"在状态栏显示正在输入的命令
set showcmd

"关闭/打开配对括号高亮
"NoMatchParen
"DoMatchParen

"显示行号：
set number

" 开启实时搜索功能
" set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu


" 美化
set background=dark
" 素雅主题
" colorscheme solarized
" 多彩主题
" colorscheme molokai
" Tomorrow主题
colorscheme Tomorrow-Night-Bright
" 复古主题
" colorscheme phd

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" 快捷键定义
" 定义快捷键到行首和行尾
nmap H 0
nmap E $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
" 设置Tagbar的快捷键
nmap <Leader>tb :TagbarToggle<CR>

" 开启/关闭高亮当前行、列
nnoremap <Leader>C :set cursorline! cursorcolumn!<CR>

"为方便复制，用<F2>开启/关闭行号显示:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"paste模式快捷键
nnoremap <Leader>P :set paste!<CR>

"启用Modeline（即允许被编辑的文件以注释的形式设置Vim选项
set modeline

"代码折叠
set foldmethod=syntax
"默认情况下不折叠,展开所有代码
set foldlevel=99

"代码折叠；对于Python来说，代码折叠可以只以缩进为依据：
autocmd FileType python setlocal foldmethod=indent

let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
map <silent> <Leader>cl		 :set				   cursorline! <CR>
imap <silent> <Leader>cl <Esc>:set					cursorline! <CR>a
map <silent> <Leader>cc		 :set	cursorcolumn!			   <CR>
imap <silent> <Leader>cc <Esc>:set	 cursorcolumn!				<CR>a
map <silent> <Leader>ct		 :set	cursorcolumn!  cursorline! <CR>
imap <silent> <Leader>ct <Esc>:set	 cursorcolumn!	cursorline! <CR>a
map <silent> <Leader>co		 :set	cursorcolumn   cursorline  <CR>
imap <silent> <Leader>co <Esc>:set	 cursorcolumn	cursorline	<CR>a
map <silent> <Leader>cn		 :set nocursorcolumn nocursorline  <CR>
imap <silent> <Leader>cn <Esc>:set nocursorcolumn nocursorline	<CR>a

"let g:pymode_rope_autoimport = 0
let g:pymode_rope = 0

" Tagbar设置
let g:tagbar_width = 30
let g:tagbar_left = 1
