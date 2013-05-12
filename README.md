dotvim
======

My .vim repository

Installation:
-------------
    git clone git://github.com/potens1/dotvim.git ~/.vim

Create symlinks:
----------------
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Submodules
----------
Install Brand new submodule

cd ~/.vim && git submodule add submoduleaddress bundle/submodulename

Get submodules
Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Upgrading a plugin
------------------

cd ~/.vim/bundle/mymodule2beupdated
git pull origin master

Upgrading all plugins
---------------------
git submodule foreach git pull origin master
