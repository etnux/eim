" 获取当前配置文件所在目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义命令 IncScript 用于导入脚本
command! -nargs=1 IncScript exec 'so '. fnameescape(s:home."/<args>")

" 添加运行目录
exec 'set rtp+='.s:home
exec 'set rtp+=~/.vim'

" 加载初始化脚本
IncScript init/viminit.vim
IncScript init/keymap.vim
IncScript init/switch.vim
IncScript init/plugin.vim
IncScript init/coc.vim
