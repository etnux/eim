let g:coc_global_extensions  = []

let g:coc_global_extensions += ['coc-marketplace', 'coc-vimlsp',]               " 基础插件
let g:coc_global_extensions += ['coc-prettier', 'coc-git',]                     " 通用
let g:coc_global_extensions += ['coc-highlight', ]                              " 提供当前单词以及颜色高亮支持
let g:coc_global_extensions += ['coc-lists', ]                                  " 提供常用列表支持
let g:coc_global_extensions += ['coc-pairs', ]                                  " 提供自动配对支持
let g:coc_global_extensions += ['coc-snippets', ]                               " 提供代码块方案


let g:coc_global_extensions += ['coc-sh', 'coc-docker']                         " SRE
let g:coc_global_extensions += ['@yaegassy/coc-nginx', '@yaegassy/coc-ansible'] " SRE

let g:coc_global_extensions += ['coc-json', 'coc-yaml', 'coc-protobuf',]        " FullStack
let g:coc_global_extensions += ['coc-sql']                                      " FullStack

let g:coc_global_extensions += []                                               " Backend

let g:coc_global_extensions += ['coc-html', 'coc-css', 'coc-emmet']             " Frontend

let g:coc_global_extensions += ['coc-go',]                                      " Golang
let g:coc_global_extensions += ['coc-rust-analyzer',]                           " Rust
let g:coc_global_extensions += ['coc-phpls', 'coc-php-cs-fixer',]               " PHP
let g:coc_global_extensions += ['coc-tsserver', 'coc-angular']                  " JavaScript
let g:coc_global_extensions += ['coc-pyright',]                                 " Python

let g:coc_global_extensions += ['coc-markdownlint',]                            " Markdown
