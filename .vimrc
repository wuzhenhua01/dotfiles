syntax on

set laststatus=2
set cmdheight=2
set ruler

set fileencodings=utf-8
"ucs-bom,utf-8,cp936,gb18030,big5,latin1
set fileencoding=utf-8
set encoding=utf-8
set fileformat=unix

"显示匹配的括号
set showmatch

"set cursorline 
"set cursorcolumn

"================================================================"
"设置tab符自动转换为空格
set expandtab
"设置tab符长度为4个空格
set tabstop=2
"设置换行自动缩进长度为4个空格
set shiftwidth=2
"设置智能缩进, 其他可选缩进方式: cindent, indentexpr, smartindent
"set autoindent
"================================================================"

"================================================================"
"manual 手工定义折叠
"indent 更多的缩进表示更高级别的折叠
"expr 用表达式来定义折叠
"syntax 用语法高亮来定义折叠
"diff 对没有更改的文本进行折叠
"marker 对文中的标志折叠
"set fdm=indent
"================================================================"

set noeb
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"Netrw
let netrw_banner=0
let netrw_liststyle=3
let netrw_browse_split=2
let netrw_winsize=20

map <F12> <Esc>:Vex<CR>
