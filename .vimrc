" Set status line display
set statusline=\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set wrap!
"CSS Autocompletion on Vim https://medium.com/vim-drops/css-autocompletion-on-vim-no-plugins-needed-e8df9ce079c7
set omnifunc=syntaxcomplete#Complete
"indendt by spaces with softtabstop https://developpaper.com/on-tab-and-space-indent-in-vim/
set softtabstop=2
set laststatus=2


"Install plug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
" IDE
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'      
" Plugs para instalar Soporte de Markdown https://www.atareao.es/tutorial/vim/markdown-con-vim/
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}


call plug#end()

"Install pathogen https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"Install Emet-vim (Mira cómo se usa) https://github.com/mattn/emmet-vim

"Install Pug-support https://github.com/digitaltoad/vim-pug
"cd ~/.vim/bundle
"git clone git://github.com/digitaltoad/vim-pug.git

let NERDTreeQuitOnOpen=1
let mapleader=" "
noremap <leader>fs :Files<cr>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

"copy or paste from X11 clipboard
"https://vim.fandom.com/wiki/GNU/Linux_clipboard_copy/paste_with_xclip
vmap <F6> :!xclip -f -sel clip<CR>
map <F7> :-1r !xclip -o -sel clip<CR> 

"--
""map <F7> mz:-1r !xclip -o -sel clip<CR>`z
"vmap <leader>xyy :!xclip -f -sel clip<CR>
"map <leader>xpp mz: -1r !xclip -o -sel clip<CR>`z
"vmap <leader>xtt :!tmux set-buffer <CR>
"-- 
