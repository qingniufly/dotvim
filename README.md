# 使用Github管理Vim插件

## 初始化Github仓库
在github上创建一个新的repository，名为vim_plugins
	cd ~/.vim
	git init
	git remote add origin https://github.com/qingniufly/vim_plugins.git
	git pull
	git push

## 下载配置和插件
	cd ~/.vim
	git clone https://github.com/qingniufly/vim_plugins.git
	ln -s ~/.vim/.vimrc ~/.vimrc

personal vim configurations and plugins
