" autowrite
set autowrite

" line number
set nu

" utf-8
set encoding=utf-8

" map <leader> key
let mapleader = ","

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

" Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'

" terraform support
Plug 'hashivim/vim-terraform'

Plug 'Yggdroot/indentLine'

call plug#end()

" YouCompleteMe configs
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" utilsnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" vim-terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
autocmd FileType terraform setlocal commentstring=#%s
