""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Info: .vimrc setting of kehr (https://github.com/kehr)
" GitHub: https://github.com/kehr/kvimrc
" Email: kehr.china@gmail.com
" Required: vim version >= 7.3
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Vundle setting                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'

" vim-scripts repos:
Plugin 'L9'
Plugin 'txt.vim'
Plugin 'Syntastic'
Plugin 'taglist.vim'
Plugin 'neocomplcache'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        User setting                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set enc=utf-8
set showmode                       " 显示当前输入模式：insert model  or ex modelor normal model
set shortmess=atI                  " 去掉启动欢迎界面 
"winpos 5 5                        " 设定窗口位置  
"set lines=40 columns=155          " 设定窗口大小  
set go=                            " 不要图形按钮  
"set guifont=Courier_New:h10:cANSI " 设置字体  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 显示标尺  
set showcmd                     " 输入的命令显示出来，看的清楚些  
set cmdheight=1                 " 命令行（在状态行下）的高度，设置为1  
set novisualbell                " 不要闪烁(不明白)  
set laststatus=1                " 启动显示状态行(1),总是显示状态行(2)  
set foldenable                  " 允许折叠  
set foldmethod=manual           " 手动折叠  
set nocompatible                " 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" set cursorcolumn              " 高亮光标所在列
" set cursorline                  " 高亮光标所在行
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

"""""""""""""""""""""""" 设置主题颜色 """"""""""""""""""""""""
"set background=dark
"colorscheme torte
"colorscheme murphy
"colorscheme desert
"colorscheme elflord
"colorscheme ron
"colorscheme slate
"colorscheme solarized 
"""""""""""""""""""""""" 设置编码 """"""""""""""""""""""""
set fencs=utf-8,gb18030,gbk,gb2312
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gb18030,gbk,gb2312
set fileencoding=utf-8
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
" 自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set magic                  
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
"set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
syntax on
" 去掉输入错误的提示声音
"set noeb
set eb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"""""""""""""""""""""""" 缩进设置 """"""""""""""""""""""""
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
"set noexpandtab
"" 使用空格替代制表符
set expandtab
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

"""""""""""""""""""""""" Pair auto complete Setting """"""""""""""""""""""""
" note: 不喜欢括号补全😓
" 小括号补全
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
" 大括号补全
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
" 中括号补全
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
" 双引号补全
":inoremap " ""<ESC>i
" 单引号补全
":inoremap ' ''<ESC>i

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
" 加了这句才可以用智能补全;
set completeopt=longest,menu


"""""""""""""""""""""""" Auto compile """"""""""""""""""""""""
"C，C++ 按F5编译
"map <F5> :call CompileFile()<CR>

"C，C++ 按<F5>编译并运行
map <F5> :call CompileAndRunFile()<CR>

"C,C++ 按<Alt+F5>的调试
map <A-F5> :call Debug ()<CR>

"" 编译文件
func! CompileFile()
""    exec "!echo File % is compiling ..." 
	if &filetype == 'c'
		exec "!gcc -std=c99 % -o  %<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
	elseif &filetype == 'java' 
		exec "!javac %" 
	elseif &filetype == 'python'
		exec "!python %"
	elseif expand("%") == 'Makefile' || expand("%") == 'makefile'
		exec "!make"
	endif
	
    "编译文件后清屏
	if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'java' || &filetype == 'sh' || &filetype == 'python' || expand("%") == 'Makefile'||expand("%") == 'makefile'
	endif
endfunc

"" 编译并运行文件
func! CompileAndRunFile()
	if &filetype == 'c'
		exec "!gcc -std=c99 % -o  %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!java %<"
	elseif &filetype == 'sh'
		:!chmod u+x %; ./%
	elseif &filetype == 'python'
		exec "!python %"
    elseif expand("%:e") == "swift"
        exec "!swift %" 
	elseif expand("%") == 'Makefile' || expand("%") == 'makefile'
		exec "!make"
	endif
	"编译或者执行文件后清屏
	if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'java' || &filetype == 'sh' || &filetype == 'python' || expand("%") == 'Makefile'||expand("%") == 'makefile'
	endif
endfunc

""调试程序
func! Debug()
	if &filetype == 'c'|| &filetype == 'cpp'
		exec "!g++ % -g -o %<"
		exec "!gdb ./%<"
	else
		exec "!echo '+++++++++++++++++++++++++++++++++++++++++';echo '+                                       +';echo '+  当前编辑的不是C或CPP文件，无法调试！ +';echo '+                                       +';echo '+++++++++++++++++++++++++++++++++++++++++'"
	endif
endfun                 


"""""""""""""""""""""""" Key Map """"""""""""""""""""""""
" 去空行  
nnoremap <C-F6> :g/^\s*$/d<CR> 
"制表符（tab） 转换空格
nmap <F3> :%ret!<CR>:w!<CR>
" Ctrl+w 保存文件!
"nmap <C-w> :w!<CR>
"inoremap <C-w> <Esc>:w!<CR>
"添加c语言单行注释（存在问题）
" map <C-kDivide> I//A$
"map = I//A$
"取消单释
"map - ^xx$

"""""""""""""""""""""""" 文本操作 """"""""""""""""""""""""
" normal or insert 模式下，按下 ctrl+a，全文选中
nmap <C-A> ggVG
imap <C-A> <Esc>ggVG
" virtual模式下，按下 Ctrl+c， 复制所选中内容
xnoremap <C-c> "+y
" normal模式下，按下Ctrl+p ,粘贴系统剪切板内容到光标所在行的下一行
nmap <C-p> "+p
"上下移动当前行
"Normal 模式下<C-j> <C-k>移动当前行到下1行或上1行
nnoremap <C-k>  mz:m-2<cr>`z==
imap <C-k> <ESC>mz:m-2<cr>`z==i
nnoremap <C-j> mz:m+<cr>`z==
imap <C-j>  <ESC>mz:m+<cr>`z==i
"Visual模式下<C-j> <C-k>移动当前选中的多行到下1行或上1行
xnoremap <C-k>  :m'<-2<cr>gv=gv
xnoremap <C-j>  :m'>+<cr>gv=gv''
" normal or insert mode 复制当前行
nmap <C-Up> yyp
imap <C-Up> <Esc>yypa
" virtual mode 复制选中的多行
vmap <C-Up> "+y<Esc>O<Esc>k"+p
" normal or insert mode 删除当前行
nmap <C-d> dd
imap <C-d> <Esc>ddi
" virtual mode 删除选中行
vmap <C-d> d
" normal mode 使用空格键在光标之前插入空格
nmap <Space> i <Esc>l
" normal mode 使用BackSpace键删除光标之前的字符
nmap <Bs> hx


"""""""""""""""""""""""" New file title """"""""""""""""""""""""
" 新建.c,.h,.sh,.java,.py文件，自动插入文件头 
" 这里需注意，python文件拓展名为：.py，获取的文件类型为python
autocmd BufNewFile Makefile,*.py,*.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"
" 新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
" 定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash")
        call append(line("."),"\#########################################################################") 
        call append(line(".")+1, "\# @File Name:    ".expand("%")) 
        call append(line(".")+2, "\# @Author:       kehr") 
        call append(line(".")+3, "\# @Mail:      kehr.china@gmail.com") 
        call append(line(".")+4, "\# @Created Time: ".strftime("%a, %m/%d/%Y, %X")) 
        call append(line(".")+5, "\# @Copyright:    GPL 2.0 applies") 
        call append(line(".")+6, "\# @Description:                     ") 
        call append(line(".")+7, "\#########################################################################") 
        call append(line(".")+8, "") 
    "python的文件后缀系统获取的是python
    elseif &filetype == 'python'
        call setline(1,"\#!/usr/bin/env python")
        call append(line("."),"\# -*- coding: utf-8 -*-")
        call append(line(".")+1,"\'''") 
        call append(line(".")+2, "\@File:    ".expand("%")) 
        call append(line(".")+3, "\@Author:  kehr") 
        call append(line(".")+4, "\@Email:   kehr.china@gmail.com") 
        call append(line(".")+5, "\@Time:    ".strftime("%a, %m/%d/%Y, %X")) 
        call append(line(".")+6, "\@Copyright: GPL 2.0 applies") 
        call append(line(".")+7, "\@Description: None") 
        call append(line(".")+8, "\'''") 
        call append(line(".")+9, "") 
    elseif expand("%") == "Makefile"
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# @File Name:    ".expand("%")) 
        call append(line(".")+1, "\# @Author:        kehr") 
        call append(line(".")+2, "\# @Mail:      kehr.china@gmail.com") 
        call append(line(".")+3, "\# @Created Time: ".strftime("%a, %m/%d/%Y, %X")) 
        call append(line(".")+4, "\# @Copyright:    GPL 2.0 applies") 
        call append(line(".")+5, "\#########################################################################") 
        call append(line(".")+6, "\# Target:          ")
        call append(line(".")+7, "\# Depend on:          ")
        call append(line(".")+8, "\# Description:          ") 
        call append(line(".")+9, "\#########################################################################") 
        call append(line(".")+10, "CC=gcc")
        call append(line(".")+11, "CFLAGS= -Wall -c")
        call append(line(".")+12, "\.PHONY: clean")
        call append(line(".")+13, "")
    else 
        call setline(1, "\/*************************************************************************") 
        call append(line("."), " * @File Name:    ".expand("%")) 
        call append(line(".")+1, " * @Author:       kehr") 
        call append(line(".")+2, " * @Mail:         kehr.china@gmail.com") 
        call append(line(".")+3, " * @Created Time: ".strftime("%a, %m/%d/%Y, %X")) 
        call append(line(".")+4, " * @Copyright:    GPL 2.0 applies") 
        call append(line(".")+5, " * @Description:                     ") 
        call append(line(".")+6, " *************************************************************************/") 
        call append(line(".")+7, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+7, "#include<iostream>")
        call append(line(".")+8, "using namespace std;")
        call append(line(".")+9, "")
    endif
    if &filetype == 'c'
        call append(line(".")+7, "#include<stdio.h>")
        call append(line(".")+8, "int main()")
        call append(line(".")+9, "{")
        call append(line(".")+10, "     ")
        call append(line(".")+11, "    return 0;")
        call append(line(".")+12, "}")
    endif
    if &filetype == 'java'
        call append(line(".")+8,"public class  ClassName {")
        call append(line(".")+9,"")
        call append(line(".")+10,"")
        call append(line(".")+11,"}")
    endif
    "新建文件后，自动定位到文件末尾
    "exec ":normal G"
endfunc 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Plugin Setting                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""" indentguides """"""""""""""""""""""""
let g:indent_guides_indent_levels = 30
let g:indent_guides_color_change_percent = 10
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']


"""""""""""""""""""""""" indentLine """"""""""""""""""""""""
"" Specify terminal vim indent line color.
"let g:indentLine_color_term = 239
let g:indentLine_color_term = 256

"" Specify terminal vim indent line color.
let g:indentLine_color_gui = '#A4E57E'

"" set indent level
" let g:indentLine_indentLevel = 10

"" enble indentLine pugin (default on)
" let g:indentLine_enabled = 1

"" set what file type wiil be shown 
 let g:indentLine_fileType = ['c', 'cpp','java','py','rb','sh']
"let g:indentLine_fileType = []

let g:indentLine_showFirstIndentLevel=1

"""""""""""""""""""""""" neocomplcache """"""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1

" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" When you input 'ho-a',neocomplcache will select candidate 'a'.
let g:neocomplcache_enable_quick_match = 1


" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions',
    \ 'css' : $VIMFILES.'/dict/css.dic',
    \ 'php' : $VIMFILES.'/dict/php.dic',
    \ 'javascript' : $VIMFILES.'/dict/javascript.dic'
    \ }
    
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 0

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"""""""""""""""""""""""" nerdtree """"""""""""""""""""""""
" 打开/关闭目录树
nmap tr :NERDTreeToggle<CR>
imap <C-F2> <Esc>:NERDTreeToggle<CR>i
"" Tells the NERD tree to make itself colourful and pretty
let NERDChristmasTree=1
"" Controls whether the NERD tree window centers when the cursor moves within a specified distance to the top/bottom of the window
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let NERDTreeDirArrows=1
let NERDTreeCasadeOpenSingleChildDir=1

"""""""""""""""""""""""" vim-powerline """"""""""""""""""""""""
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256	   " Explicitly tell Vim that the terminal supports 256 colors. show colored statusline.
set noshowmode
"" 启用缓存，加快运行速度
let g:Powerline_cache_enabled = 1
"" 设置状态栏分隔符
let g:Powerline_symbols = 'fancy'
""let Powerline_symbols = 'compatible'
"" let g:Powerline_symbols = 'unicode'
"" 自定义状态栏分隔符
"" let g:Powerline_dividers_override = ['>>', '>', '<<', '<']
"" 设置状态栏的主题（还是default比较好一些）
" let g:Powerline_theme = 'solarized256'
" let g:Powerline_theme='long'
 let g:Powerline_colorscheme='solarized256_dark'
"" 设置状态栏显示文件的绝对路径（全路径）
let g:Powerline_stl_path_style = 'full'
"" 设置自定义字体
"" 字体下载：https://github.com/pdf/ubuntu-mono-powerline-ttf
set guifont=Menlo\ for\ Powerline\ 12

"""""""""""""""""""""""" rainbow_parentheses """"""""""""""""""""""""
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
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""""""""""""""""""""" YouCompleteMe """"""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py '
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Do not ask when starting vim
""let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"""""""""""""""""""""""" Syntastic """"""""""""""""""""""""
"" set statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" set error signs
highlight SyntasticErrorSign guifg=white guibg=red

""set error highlighting
highlight SyntasticError guibg=#2f0000

"" other setting
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 8
let g:syntastic_ignore_files = ['\m^/usr/include/', '\m\c\.h$']
let g:syntastic_filetype_map = { 'latex': 'tex', 'gentoo-metadata': 'xml' }
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_python_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_mode_map      = {'mode': 'active',
            \'active_filetypes':  [],
            \'passive_filetypes': ['html', 'css', 'xhtml', 'jade', 'less']
            \}    
"""""""""""""""""""""""" taglist """"""""""""""""""""""""
" 按下<F12>打开/关闭taglist窗口
nnoremap <silent> tg :TlistToggle<CR>

" 获取操作系统类型
function! GetSysType()
	if has("win16") || has("win32") || has("win64")
		return "windows"
	elseif has("unix")
		return "linux"
	endif
endfunction

" 指定ctags,系统需要安装ctags。ubuntu系统：sudo apt-get intsall 
if GetSysType() == "windows"
	let Tlist_Ctags_Cmd = 'ctags'
elseif GetSysType() == "linux"
	let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif

" 只显示当前文件的tag
let Tlist_Show_One_File = 1 
" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
" 在右侧显示taglist窗口
let Tlist_Use_Right_Window = 1
" 在vim打开C/C++等文件时自动打开taglist
""let Tlist_Auto_Open = 1
" 设置单击打开tag
"let Tlist_Use_SingleClick = 1
" 打开taglist后鼠标默认在taglist窗口
"let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_GainFocus_On_ToggleOpen = 0
" 打开标签自动高亮(默认打开)
let Tlist_Auto_Highlight_Tag = 1
" 显示标签内容的提示
let Tlist_Process_File_Always = 1
" 设置标签默认按名称排序，而不是按出现位置排序
let Tlist_Sort_Type = "name"
" 在GVIM中显示标签菜单，默认不显示
let Tlist_Show_Menu = 1


