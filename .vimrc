filetype off                  " required
syntax on

" General
set t_Co=256
set nocompatible                " be iMproved, required
set number                      " Show line numbers
set linebreak	                " Break lines at word (requires Wrap lines)
set showmatch	                " Highlight matching brace
set visualbell	                " Use visual bell (no beeping)
set mouse=a
set showmatch
set fileencoding=utf-8
set encoding=utf-8
set wrap
set clipboard=unnamed

set hlsearch	                " Highlight all search results
set smartcase	                " Enable smart-case search
set ignorecase	                " Always case-insensitive
set incsearch	                " Searches for strings incrementally
set autoindent	                " Auto-indent new lines
set cursorline
set autoread
set smartcase

" set expandtab	                " Use spaces instead of tabs
" set shiftwidth=4	        " Number of auto-indent spaces
set smartindent	                " Enable smart-indent
set autoindent                  " Enable smart-indent
set smarttab	                " Enable smart-tabs
" set softtabstop=4	        " Number of spaces per Tab
set background=light
set hidden
set foldcolumn=1
cnoreabbrev W w xnoremap p pgvy

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" Advanced
set ruler                       " Show row and column ruler information

set undolevels=1000	        " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

let g:mapleader = ","
let python_highlight_all=1

" autocmd BufRead *.py set expandtab

se
nnoremap <Leader>n :NERDTreeToggle<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'othree/html5.vim'

" These are snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

Plugin 'rking/ag.vim'
nnoremap <Leader>a :AgFromSearch<CR>

Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'cohlin/vim-colorschemes'
Plugin 'rakr/vim-one'
Plugin 'groenewege/vim-less'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-sleuth'
Plugin 'Yggdroot/indentLine'
let g:indentLine_color_term = 239
let g:indentLine_concealcursor = 'vc'
" let g:indentLine_conceallevel = 1
let g:indentLine_char = '|'
let g:indentLine_enabled = 0
autocmd BufRead *.py let g:indentLine_enabled = 1

Plugin 'airblade/vim-gitgutter'
let g:gitgutter_realtime = 0                     "Disable gitgutter in realtime
let g:gitgutter_eager = 0                        "Disable gitgutter to eager load on tab or buffer switch

Plugin 'ryanoasis/vim-devicons'
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 0
let g:webdevicons_enable_ctrlp = 1

Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'
let g:syntastic_python_pep8_exec = '~/.local/bin/pep8'
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']


Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'

Plugin 'scrooloose/nerdtree'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore=['\.git$', '\.sass-cache$', '\.vagrant', '\.idea']
let NERDTreeWinSize = 34
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>r :NERDTreeFind<cr>

Plugin 'kien/ctrlp.vim'
set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>m :CtrlP<CR>

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder namec

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
autocmd QuickFixCmdPost *grep* cwindow

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme = "one" " edocx darcula
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_symbols = {}
let g:airline_enable_branch = 0
" let g:airline_enable_syntastic  = 0
set laststatus=2 " 2
set lazyredraw

" Show syntax highlighting groups for word under cursor
nmap <C-S-L> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val,"name")')
endfunc
" Git plugin not hosted on GitHub

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme one " xcode-default py-darcula
autocmd filetype crontab setlocal nobackup nowritebackup
