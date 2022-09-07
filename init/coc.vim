" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 代码跳转
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 补全提示
if has('nvim')
    inoremap <silent><expr> <c-g> coc#refresh()
else
    inoremap <silent><expr> <c-g> coc#refresh()
endif

" 文档展示
nnoremap <silent><nowait> <space>k :call ShowDocumentation()<CR>
" 命令列表
nnoremap <silent><nowait> <space>l  :<C-u>CocList <cr>
" 重开列表 
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" 错误或者诊断
nnoremap <silent><nowait> <space>aa  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>a[ <Plug>(coc-diagnostic-prev)
nnoremap <silent><nowait> <space>a] <Plug>(coc-diagnostic-next)
" 插件与市场
nnoremap <silent><nowait> <space>m  :<C-u>CocList marketplace<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" 命令列表
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" 结构跳转
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" 符号搜索
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" 下一个条目
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" 上一个条目
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

" 格式化
command! -nargs=0 Format :call CocActionAsync('format')

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction

" 插件列表
let g:coc_global_extensions  = ['coc-marketplace', 'coc-vimlsp',]           " 基础插件
let g:coc_global_extensions += ['coc-prettier', 'coc-git',]                 " 通用
let g:coc_global_extensions += ['coc-json', 'coc-yaml', 'coc-protobuf',]    " 序列化文件
let g:coc_global_extensions += ['coc-sh',]                                  " SRE
let g:coc_global_extensions += ['coc-sql',]                                 " Backend
let g:coc_global_extensions += ['coc-html', 'coc-css',]                     " Frontend
let g:coc_global_extensions += ['coc-tsserver',]                            " JavaScript
let g:coc_global_extensions += ['coc-go',]                                  " Golang
let g:coc_global_extensions += ['coc-rust-analyzer',]                       " Rust
let g:coc_global_extensions += ['coc-phpls', 'coc-php-cs-fixer',]           " PHP

