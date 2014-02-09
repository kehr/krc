"
"                * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"              * * FileName:  .vimrc                                   * *
"             *  * Version:    0.0.1                                   *  *
"            * * * Author:	   kehr                                    * * *
"                * Email:      kehr.china@gmail.com                    *
"                * Blog:       http://www.ikehr.com                    *
"                * GitHub:     https://www.github.com/kehr             *
"                * Repo:	   https://www.github.com/kehr/kehr-vim    *
"                * Last Update:2014-1-9                                *
"                * Discripyion:Use vunble pugin manage all of pugins.  *
"                * * * * * * * * * * * * * * * * * * * * * * * * * * * *

""""""""""""""""""""""README START""""""""""""""""""""""""""""""""""""""""
" README below:
"
" 1.About commonts.
"
" This document will have some comments, and in accordance with the following rules:
"	1). Functional comments begins with a quotation mark. 
"		Such as: " Bundle 'gmarik/vunble'
"	2). Documentation comments begin with two quotes.
"		Such as: "" original repos on Github.
"	3). Title comments with more than two quotation marks.The number of quotes from 3 to 10. the more quotes, the higher the level title.
"		Such as: """""""""" let Vundle manage Vundle.
"	4). Functional areas divided by multiple quotes.Number of quotes over 10.
"
"2.more info please see: https://github.com/kehr/kehr-vim
"
""""""""""""""""""""""""README END""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""vunble brief help start"""""""""""""""""""""""""""""""""

"""" Brief help.
" :BundleList          - list configured bundles
" :BundleInstall[!]    - install(update) bundles
" :BundleSearch[!] foo - search(or refresh cache first) for foo
" :BundleClean[!]      - confirm(or auto-approve) removal of unused bundles
" see `:h vundle` for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"""""""""""""""""""vunble brief help end"""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle配置(vundle Configuration)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set vundle. note: copy from official vimrc script.
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""""""""""" let Vundle manage Vundle
Bundle 'gmarik/vundle'
"
""""""""""" My bundles here:
"" original repos on GitHub:
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Yggdroot/indentLine'
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
"
""""""""""" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'neocomplcache'
Bundle 'Conque-Shell'
Bundle 'txt.vim'
" Bundle 'L9'
" Bundle 'FuzzyFinder'
""""""""""" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
""""""""""" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...
filetype plugin indent on     " required!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 手动配置(Manual Configuration)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"" vim基本设置
source ~/.vim/vimfiles/basicSetting.conf 
"" 自动加载文件开头
source ~/.vim/vimfiles/showtitle.conf
"" 编译文件
source ~/.vim/vimfiles/compilefile.conf
"" 自动补全括号等
source ~/.vim/vimfiles/autocomplete.conf
"" 快捷键配置
source ~/.vim/vimfiles/keyMapSetting.conf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件的配置(pugin Configuration)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示目录插件NERDtree设置。  插件地址：http://www.vim.org/scripts/script.php?script_id=1658
source ~/.vim/vimfiles/nerdtree.conf
" 控制台插件ConqueTerm的设置。插件地址：http://www.vim.org/scripts/script.php?script_id=2771 
source ~/.vim/vimfiles/conqueterm.conf
" tag插件taglist的设置。      插件地址：http://www.vim.org/scripts/script.php?script_id=273
source ~/.vim/vimfiles/taglist.conf
" 代码补全插件nercomplcache   插件地址：http://www.vim.org/scripts/script.php?script_id=2620
source ~/.vim/vimfiles/neocomplcache.conf
" 自动探测文本类型插件txt.vim 插件地址：http://www.vim.org/scripts/script.php?script_id=1532
au BufRead,BufNewFile *  setfiletype txt
" 状态栏插件powerline
source ~/.vim/vimfiles/powerline.conf
" 显示缩进级别竖线插件indentline
source ~/.vim/vimfiles/indentline.conf
" 括号高亮增强插件rainbow_parentheses
source ~/.vim/vimfiles/rainbow_parentheses.conf

"""""""""""""""""""""""""""""""""""""end""""""""""""""""""""""""""""""""""""""""""""""

