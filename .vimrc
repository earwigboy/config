" Turn on Pathogen
execute pathogen#infect()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" Solarized colour scheme
set background=dark
colorscheme dracula
set guifont=Droid\ Sans\ Mono:h12

" General editor settings
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set autowrite
set nowrap
autocmd BufWritePost .vimrc,_vimrc source $MYVIMRC

" iTerm2 cursor shape for different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7" 

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_loc_list_height=5
let g:syntastic_quiet_messages = { 'regex': '<md'} 

let g:syntastic_html_tidy_blocklevel_tags=[
  \ 'ng-include',
  \ 'ng-form',
  \ 'md-card',
  \ 'md-toolbar',
  \ 'md-checkbox',
  \ 'md-radio-button',
  \ 'md-input-container',
  \ 'md-hint',
  \ 'router-outlet'
  \ ]


"vim-go key bindings
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)


