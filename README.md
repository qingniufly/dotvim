# 使用Github管理Vim插件

## 初始化Github仓库
在github上创建一个新的repository，名为dotvim
	cd ~/.vim
	git init
	git remote add origin https://github.com/qingniufly/dotvim.git
	git pull
	git push

## 下载配置和插件
	cd ~
	git clone https://github.com/qingniufly/dotvim.git
	mv dotvim .vim
	ln -s ~/.vim/.vimrc ~/.vimrc

## 添加插件
直接在~/.vim/bundle目录下使用git clone 插件的github地址，例如：
	git clone https://github.com/davidhalter/jedi-vim.git
然后在~/.vim/.vimrc中进行相应的插件配置即可
修改之后执行commit和push
