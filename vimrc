"let customizations---------------------------------
"airline--------------------------------------------
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"Syntastic------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_loc_list_height = 5
"let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++14 `pkg-config --cflags --libs gtkmm-3.0` -Wall -Wextra -lncurses -lboost_system -lboost_thread"
"indentLine-----------------------------------------
"let g:indentLine_color_term = 239
let g:indentLine_setColors = 0
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
"Python---------------------------------------------
let python_highlight_all=1
"Tmuxline-------------------------------------------
let g:tmuxline_preset = 'powerline'
let g:tmuxline_theme = 'airline_insert'
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_powerline_separators = 1
"Minimap--------------------------------------------
let g:minimap_highlight='Visual'
"Clang----------------------------------------------
let g:clang_library_path='/usr/lib64/libclang.so'
"Ctags----------------------------------------------
let g:ctags_statusline=1
"cpp-syntax-highlight-------------------------------
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_concepts_highlight = 1

"Neocomplete and neosnippet-------------------------
let g:acp_enableAtStartup = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_lenght = 3 
" define Dictionar
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc



" KeyMaps
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :Minimap<CR>
nmap <F10> :MinimapClose<CR>

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
" syntastic Sets
set statusline+=%#warningmsg#
set statusline+=%{syntasticStatuslineFlag()}
set statusline+=%*

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cursorline
"Sets color column for 110 characters limit
set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey
" Sets indentation and folding
set smartindent
set autoindent
set foldenable

set completeopt=longest,menuone
set wildmenu
set wildmode=longest:list,full

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

syntax on

hi clear SignColumn

colorscheme monokai

" PLUGINS

"error and syntax checking and linter.
Plugin 'Syntastic'

" C/C++ Plugins
Plugin 'c.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/gtk-vim-syntax'
Plugin 'doronbehar/vim-ncurses-syntax'

"Help and features plugins/
Plugin 'vim-startify'
Plugin 'ctrlp.vim'
Plugin 'EasyMotion'
Plugin 'surround.vim'
Plugin 'Raimondi/delimitMate'

" File and code navigation
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Tagbar'

" GIT integration.
Plugin 'tpope/vim-fugitive'

" Python plugins
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'

"code completers and snipets
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
"Plugin 'clang-complete'
Plugin 'SuperTab'

" VimSual ;)
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'severin-lemaignan/vim-minimap' 
Plugin 'vim-tags'
Plugin 'Yggdroot/indentLine'
Plugin 'crusoexia/vim-monokai'

call vundle#end()
filetype indent plugin on
"filetype plugin on
set omnifunc=syntaxcomplete#Complete
