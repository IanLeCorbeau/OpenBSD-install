" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

syntax on

filetype plugin indent on
set backspace=indent,eol,start
set showmatch
set incsearch
set mouse=a
set number
set ruler

vnoremap <C-C> :w !xclip -sel c <CR><CR>
