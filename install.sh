#!/bin/bash
#########################################################################
# @File Name:    install.sh
# @Author:       kehr
# @Mail:         kehr.china@gmail.com
# @Created Time: Fri, 04/03/2015, 11:44:44 PM
# @Copyright:    GPL 2.0
# @Description:  
#########################################################################

echo "check vim version ..."    
vim_info=`vim --version | head -n1 `
vim_version=`vim --version | head -n1 | awk -F " " '{split($5,ver,".");version=int(ver[1])+int(ver[2]);print version}'`
if [ $vim_version -lt 16 ]; then
    echo "$vim_info is too old, please get the latest version !" 
    exit -1
fi
echo "vim info is ok!"
echo "get vundle ..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "get vundle successed !"
echo "backup your  .vimrc ..."
cp -v ~/.vimrc ~/.vimrc.bak
echo "install krc, update .vimrc ..."
cp -v ./vimrc ~/.vimrc 

echo "finished !"
