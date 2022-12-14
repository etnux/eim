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

" 插件与市场
nnoremap <silent><nowait> <space>lm  :<C-u>CocList marketplace<cr>
nnoremap <silent><nowait> <space>le  :<C-u>CocList extensions<cr>
" 命令列表
nnoremap <silent><nowait> <space>ll  :<C-u>CocList <cr>
" 重开列表
nnoremap <silent><nowait> <space>lr  :<C-u>CocListResume<CR>

" 错误或者诊断
nnoremap <silent><nowait> <space>aa  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>a[ <Plug>(coc-diagnostic-prev)
nnoremap <silent><nowait> <space>a] <Plug>(coc-diagnostic-next)

" 命令列表
nnoremap <silent><nowait> <space>sc  :<C-u>CocList commands<cr>
" 结构跳转
nnoremap <silent><nowait> <space>so  :<C-u>CocList outline<cr>
" 符号搜索
nnoremap <silent><nowait> <space>ss  :<C-u>CocList -I symbols<cr>

" 下一个条目
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" 上一个条目
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

" 代码动作
nnoremap <silent><nowait> <space>ca <Plug>(coc-codeaction)
" 代码修复
nnoremap <silent><nowait> <space>cf <Plug>(coc-fix-current)
" 重命名
nnoremap <silent><nowait> <space>rn <Plug>(coc-rename)

