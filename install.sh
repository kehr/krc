#!/bin/bash
#########################################################################
# @File Name:    install.sh
# @Author:       kehr
# @Mail:         kehr.china@gmail.com
# @Created Time: Fri, 04/03/2015, 11:44:44 PM
# @Copyright:    GPL 2.0
# @Description:  
#########################################################################

KRC_LOC="https://raw.githubusercontent.com/kehr/krc/master/vimrc"
VUNDLE_JUMBO_OLD=$HOME"/.jumbo/share/vim/vimfiles/autoload"

# jumbo provide a old version vundle when you install vim use command `jumbo install vim`,
# in order to avoid conflict with the latest version of vundle, we need to remove the old version.
if [ -d $VUNDLE_JUMBO_OLD ];then
	echo "remove vundle provided by jumbo ..."
	rm -rfv $VUNDLE_JUMBO_OLD/vundle*
fi

echo "check vim version ..."    
vim_info=`vim --version | head -n1 `
vim_version=`vim --version | head -n1 | awk -F " " '{split($5,ver,".");version=int(ver[1])+int(ver[2]);print version}'`
if [ $vim_version -lt 10 ]; then
    echo "$vim_info is too old, please get the latest version !" 
    echo "Otherwise please follow the instractions below:"
    echo "    1. yum install vim #RedHat/CentOS"
    echo "    2. brew install vim #OS X"
    echo "    3. sudo apt-get install vim #Debian/Ubuntu"
    echo "    4. jumbo install vim # Just for baidu ^_^"
    echo "Choice your system type and use the command above to install vim(>=7.3)."
    exit -1
fi
echo "vim version is ok!\n"

echo "get vundle ..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "get vundle success!\n"

echo "backup your  .vimrc ..."
cp -v ~/.vimrc ~/.vimrc.bak
echo "install krc, update .vimrc ..."
curl -L $KRC_LOC > ~/.vimrc 
echo "finished! enjoy it."
