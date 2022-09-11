" 基本配置
set nocompatible                "  不兼容VI
filetype plugin indent on       "  文件类型检测与加载插件
set helplang=cn                 "  中文帮助文档
set mouse=a                     "  鼠标启用
set history=1000                "  记录历史操作数量
set autoread                    "  检测文件改变
set noerrorbells                "  关闭错误警告音
set cmdheight=2                 "  展示命令的行数，可以多展示一些信息
set updatetime=100              "  自动命令延时

" 文件编码
if has('multi_byte')
    set encoding=utf-8          "  UTF-8 编码
    set termencoding=utf-8      "  输出到终端的编码
    set fileencoding=utf-8      "  写入文件时的编码
endif
" 打开文件时 vim 用于检测文件编码的列表
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1 

" 记录配置
set nobackup                    "  不创建备份文件
set nowritebackup               "  不创建备份文件
set noswapfile                  "  不创建交换文件
set undofile                    "  保留撤销历史
if has('nvim')
    set undodir=~/.vim/.undo//
else
    set undodir=~/.local/share/nvim/.undo//
endif

" 显示配置
syntax enable                   "  语法高亮
set number                      "  显示行号
set relativenumber              "  相对行号
set cursorline                  "  高亮当前行
set ruler                       "  光标位置
set showmatch                   "  高亮匹配的括号
set showcmd                     "  显示当前指令
set nowrap                      "  禁止折行
set showcmd                     "  展示操作命令
set signcolumn=yes              "  展示标号栏，否则展示标记时会移动文本
"set visualbell                 "  出错发出视觉提示

" 编辑配置
set autoindent                  "  自动缩进
"set autochdir                  "  自动将工作目录切换到当前文件
set autoread                    "  自动读取文件变更
set smartindent                 "  智能缩进
set expandtab                   "  TAB 转为空格
set shiftwidth=4                "  缩进空格数
set tabstop=4                   "  TAB 键空格数
set softtabstop=4               "  TAB 转空格数
set backspace=indent,eol,start  "  允许在插入模式下对所有内容退格删除
set scrolloff=4                 "  光标上下最小行数
set hidden                      "  允许未保存时切换缓冲区
"  使用系统剪贴板
set clipboard=unnamed,unnamedplus       

" 搜索配置
set hlsearch                    "  高亮搜索结果
set incsearch                   "  搜索时跳转到第一个匹配处
set ignorecase                  "  搜索时忽略大小写
set smartcase                   "  输入大写敏感

" 补全配置
set wildmenu                    "  开启补全菜单
set wildmode=list:longest,full  "  补全选项
set shortmess+=c                "  补全时使用短消息

" 折叠配置
set foldenable                  "  启用折叠
set foldmethod=marker
