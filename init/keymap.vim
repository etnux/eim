" 快捷键前缀 
let mapleader="'"
let g:mapleader="'"

" Reload Vimrc
nnoremap <leader>ro :source $MYVIMRC<CR>

" 移动增强
noremap <C-h> <Left>
noremap <C-j> <Down>
noremap <C-l> <Right>
noremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-l> <Right>
cnoremap <C-k> <Up>

" 缓冲区
noremap <silent>\bn :bn<cr>
noremap <silent>\bp :bp<cr>
noremap <silent>\bm :bm<cr>
noremap <silent>\bv :vs<cr>
noremap <silent>\bs :sp<cr>
noremap <silent>\bd :bdelete<cr>
noremap <silent>\bl :ls<cr>
noremap <silent>\bb :ls<cr>:b

" 标签
noremap <silent>\tn :tabnew<cr>
noremap <silent>\tc :tabclose<cr>
noremap <silent>\tt :tabnext<cr>
noremap <silent>\tp :tabprev<cr>
noremap <silent>\to :tabonly<cr>
noremap <silent>\th :-tabmove<cr>
noremap <silent>\tl :+tabmove<cr>
noremap <silent>\ta g<tab>
noremap <silent><tab>1 :tabn 1<cr>
noremap <silent><tab>2 :tabn 2<cr>
noremap <silent><tab>3 :tabn 3<cr>
noremap <silent><tab>4 :tabn 4<cr>
noremap <silent><tab>5 :tabn 5<cr>
noremap <silent><tab>6 :tabn 6<cr>
noremap <silent><tab>7 :tabn 7<cr>
noremap <silent><tab>8 :tabn 8<cr>
noremap <silent><tab>9 :tabn 9<cr>
noremap <silent><tab>0 :tabn 10<cr>
noremap <silent><tab><tab> :tabnext<cr>
noremap <silent><s-tab> :tabprev<cr>
inoremap <silent><s-tab> <esc>:tabprev<cr>

" 窗口
noremap <silent>\ww <c-w>w
noremap <silent>\wv <c-w>v
noremap <silent>\ws <c-w>s
noremap <silent>\wh <c-w>h
noremap <silent>\wj <c-w>j
noremap <silent>\wk <c-w>k
noremap <silent>\wl <c-w>l
noremap <silent>\wc <c-w>c
noremap <silent>\wo <c-w>o
noremap <silent>\wp <c-w>p
noremap <silent>\1 :1wincmd w<cr>
noremap <silent>\2 :2wincmd w<cr>
noremap <silent>\3 :3wincmd w<cr>
noremap <silent>\4 :4wincmd w<cr>
noremap <silent>\5 :5wincmd w<cr>
noremap <silent>\6 :6wincmd w<cr>
noremap <silent>\7 :7wincmd w<cr>
noremap <silent>\8 :8wincmd w<cr>
noremap <silent>\9 :9wincmd w<cr>

