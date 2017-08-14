"let customizations
"airline
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
"indentLine
"let g:indentLine_color_term = 239
let g:indentLine_setColors = 0
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
"Python
let python_highlight_all=1
"Tmuxline
let g:tmuxline_preset = 'powerline'
let g:tmuxline_theme = 'airline_insert'
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_powerline_separators = 1
"Minimap

let g:minimap_highlight='Visual'
"Clang
let g:clang_library_path='/usr/lib64/libclang.so'
"Ctags
let g:ctags_statusline=1
"cpp-syntax-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


"Neocomplete and neosnippet
let g:neocomplete#enable_at_startup = 1
let g:acp_enableAtStartup = 0
let g:neocomplete#sources#syntax#min_keyword_lenght = 3
let g:neocomplete#enable_smart_casa = 1
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType javascript setlocal omnifunc



" KeyMaps
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :Minimap<CR>
nmap <F10> : MinimapClose<CR>

" NERDTree configs
autocmd VimEnter * NERDTree
autocmd BufEnter *NERDTreeMirror
autocmd VimEnter * wincmd w
autocmd BufWritePost *.py call Flake8()

" Minimap configs
"autocmd VimEnter * Minimap
"autocmd BufEnter * Minimap

filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" set configurations
set exrc
set nocompatible
set secure
set laststatus=2
set number
set ruler
set showcmd
set background=dark
set statusline+=%#warningmsg#
set statusline+=%{syntasticStatuslineFlag()}
set statusline+=%*
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cursorline
set colorcolumn=110
set smartindent
set autoindent
set foldenable
set completeopt=longest,menuone
set wildmenu
set wildmode=longest:list,full
highlight ColorColumn ctermbg=darkgrey

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

syntax on

hi clear SignColumn

colorscheme monokai

" PLUGINS
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Auto-Pairs'
Plugin 'Indent-Guides' 
Plugin 'ctrlp.vim'
Plugin 'Tagbar'
"Plugin 'taglist.vim'
Plugin 'EasyMotion'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'molokai'
Plugin 'vim-startify'
Plugin 'surround.vim'
"Plugin 'clang-complete'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'vim-javascript'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'SuperTab'
"Plugin 'jslint.vim'
"Plugin 'jsbeautify'
"Plugin 'css3-syntax-plus'
"Plugin 'mattn/emmet-vim'
Plugin 'pep8' 
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'edkolev/tmuxline.vim'
Plugin 'severin-lemaignan/vim-minimap' 
Plugin 'c.vim'
Plugin 'vim-tags'
Plugin 'AutoComplPop'
Plugin 'davidhalter/jedi-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'crusoexia/vim-monokai'

call vundle#end()
filetype indent plugin on
"filetype plugin on
"set omnifunc=syntaxcomplete#Complete
