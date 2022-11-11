call plug#begin()

" 界面相关
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 编辑相关
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'

" 自动补全
if v:version > 800
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

" 文件跳转
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'francoiscabrol/ranger.vim'

" 项目管理
Plug 'tpope/vim-fugitive'

" 其他工具
Plug 'etnux/vim-beancount', { 'for': 'bean' }

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 主题
set background=dark
colorscheme gruvbox

" FZF 配置
"let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_buffers_jump = 1
let g:fzf_action = {
            \ 'ctrl-e': 'tab split',
            \ 'ctrl-h': 'split',
            \ 'ctrl-v': 'vsplit' }
" FZF 绑定
nnoremap <silent> <c-p> :GFiles<CR>
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fg :Rg<CR>
nnoremap <silent> <leader>ft :Tags<CR>
nnoremap <silent> <leader>fb :Buffers<CR>

" vim-easymotion
let g:EasyMotion_do_mapping = 0 " 关闭默认映射
let g:EasyMotion_smartcase = 1  " 大小写不敏感
nmap <C-m> <Plug>(easymotion-overwin-f2)

" nerdtree
nnoremap <leader>nn :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
" 自动关闭
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" 同步 nerdtree
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" ranger
let g:ranger_map_keys = 0 " disable default <leader>f
let g:NERDTreeHijackNetrw = 0 " add this line if you use NERDTree
let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
noremap <leader>ll :Ranger<CR>
