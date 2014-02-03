""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmode					" 显示当前输入模式：insert model  or ex model or normal model
set shortmess=atI				" 去掉启动欢迎界面 
"winpos 5 5						" 设定窗口位置  
"set lines=40 columns=155		" 设定窗口大小  
set go=							" 不要图形按钮  
"set guifont=Courier_New:h10:cANSI   " 设置字体  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul	" 显示标尺  
set showcmd						" 输入的命令显示出来，看的清楚些  
set cmdheight=1					" 命令行（在状态行下）的高度，设置为1  
set novisualbell				" 不要闪烁(不明白)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}		 "状态行显示的内容  
set laststatus=1				" 启动显示状态行(1),总是显示状态行(2)  
set foldenable					" 允许折叠  
set foldmethod=manual			" 手动折叠  
set background=dark				"背景使用黑色 
set nocompatible				"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif

""""""""""""""""""""""设置主题颜色""""""""""""""""""""
"colorscheme torte
"colorscheme murphy
colorscheme desert 
"colorscheme elflord
"colorscheme ron
"""""""""""""""""""""""设置编码"""""""""""""""""""""""
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,cp936
"set fileencoding=utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" normal模式下，按下 ctrl+a，复制全文
	map <C-A> ggVGY
	map! <C-A> <Esc>ggVGY
" virtual模式下，按下 Ctrl+c， 复制所选中内容
	xnoremap <C-c> "+y
" normal模式下，按下Ctrl+p ，粘贴系统剪切板内容
	nmap <C-p> "+p

" 格式化全文
	map <F12> gg=G

" 去空行  
nnoremap <C-F2> :g/^\s*$/d<CR> 

" Ctrl+w 保存文件!
noremap <C-w> <Esc>:w!<CR>
"  Ctrl + <F12>保存并退出
noremap <C-F12> <Esc>:x<CR> 
"""""""""""""""""""""""""""""""kehr""2013.11.17
"添加c语言单行注释（存在问题）
	" map <C-kDivide> I//A$
	"map = I//A$
"取消单行注释
	"map - ^xx$


"上下移动当前行
"Normal 模式下<C-j> <C-k>移动当前行到下1行或上1行
"Visual模式下<C-j> <C-k>移动当前选中的多行到下1行或上1行
	nnoremap <C-k>  mz:m-2<cr>`z==
	nnoremap <C-j>  mz:m+<cr>`z==
	xnoremap <C-k>  :m'<-2<cr>gv=gv
	xnoremap <C-j>  :m'>+<cr>gv=gv''
" 复制当前行
	nmap <C-Up> yyp:w<CR>
" 删除当前行
	nmap <C-d> dd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
" 代码补全 
set completeopt=preview,menu 
" 允许插件  
filetype plugin on
" 共享剪贴板  
set clipboard+=unnamed 
" 从不备份  
set nobackup
" make 运行
"":s et makeprg=g++\ -Wall\ \ %
" 自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
" 禁止生成临时文件
set nobackup
set noswapfile
" 搜索忽略大小写
set ignorecase
" 搜索逐字符高亮
set hlsearch
set incsearch
" 行内替换
set gdefault
" 编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
" 语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
set laststatus=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 设置vim缓存的刷新时间为1s，默认是4s
set updatetime=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 手动配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动加载文件开头
source ~/.vim/vimfiles/showtitle.conf
" 编译文件
source ~/.vim/vimfiles/compilefile.conf
" 自动补全括号等
source ~/.vim/vimfiles/autocomplete.conf

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"插件的配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示目录插件NERDtree设置。  下载地址：http://www.vim.org/scripts/script.php?script_id=1658
source ~/.vim/vimfiles/nerdtree.conf
" 控制台插件ConqueTerm的设置。下载地址：http://www.vim.org/scripts/script.php?script_id=2771 
source ~/.vim/vimfiles/conqueterm.conf
" tag插件taglist的设置。      下载地址：http://www.vim.org/scripts/script.php?script_id=273
source ~/.vim/vimfiles/taglist.conf
" 代码补全插件nercomplcache   下载地址：http://www.vim.org/scripts/script.php?script_id=2620
source ~/.vim/vimfiles/neocomplcache.conf
" 自动探测文本类型插件txt.vim 下载地址：http://www.vim.org/scripts/script.php?script_id=1532
au BufRead,BufNewFile *  setfiletype txt
"""""""""""""""""""""""""""""""""""""""""""""end"""""""""""""""""""""""""""""""""""""""""""""""""

