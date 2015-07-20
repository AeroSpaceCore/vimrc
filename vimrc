set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
" Vim go Support
Plugin 'fatih/vim-go'

" YCM
Plugin 'Valloric/YouCompleteMe'

" nerdtree
Plugin 'scrooloose/nerdtree'
" tagbar
Plugin 'majutsushi/tagbar'
" theme spacegray
Plugin 'hhff/SpacegrayEighties.vim'
" nerdcommenter
Plugin 'scrooloose/nerdcommenter'
" 引号括号补全
Plugin 'Raimondi/delimitMate'
" airlien
Plugin 'bling/vim-airline'
" buffer exp
Plugin 'fholgado/minibufexpl.vim'
" ulti snippet
Plugin 'SirVer/ultisnips'
" theme
Plugin 'fatih/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syn on
set nu
" color slate
colorscheme SpacegrayEighties
"colorscheme molokai

" backspace功能
set backspace=indent,eol,start
" 去掉预览窗口preview和设置longest
set completeopt=menu,longest

"let g:neocomplete#enable_at_startup = 1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" autocmd VimEnter * NERDTree
nmap nt :NERDTreeToggle<CR>
nmap tb :TagbarToggle<CR>
nmap gd :GoDef<CR>
nmap gr :GoReferrers<CR>
nmap gc :GoDoc<CR>
nmap gb :GoBuild<CR>
nmap gn :GoRename<CR>
nmap gi :GoInfo<CR>
" filetype plugin on
let mapleader=","

" syntax enable
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
"let g:molokai_original = 1
"colorscheme molokai
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
