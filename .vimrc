" autowrite
set autowrite

" line number
set nu

" utf-8
set encoding=utf-8

" zenburn theme
colors zenburn
let g:airline_theme='zenburn'

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" golang
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_fmt_command = "goimports"

" vim-plug
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" vim-go
Plug 'fatih/vim-go'

Plug 'vim-syntastic/syntastic'

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'AndrewRadev/splitjoin.vim'

" snipet
Plug 'SirVer/ultisnips'

Plug 'Valloric/YouCompleteMe'

Plug 'jiangmiao/auto-pairs'

call plug#end()
