" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2002 May 28
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'wincent/command-t'
" Bundle 'solarnz/thrift.vim'
Plugin 'fatih/vim-go'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'justmao945/vim-clang'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim'
Plugin 'vim-utils/vim-man'
" Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/calendar.vim--Matsumoto'
"Plugin 'vitalk/vim-simple-todo'
"Plugin 'tpope/vim-repeat'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-fugitive.git'
"Plugin 'ivanov/vim-ipython'
"Plugin 'vim-scripts/a.vim'
"Plugin 'w0rp/ale'
"Plugin 'leafgarland/typescript-vim'
"Plugin 'Quramy/tsuquyomi'
"Plugin 'python-mode/python-mode.git'
"Plugin 'itchyny/lightline.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'heavenshell/vim-pydocstring'
Plugin 'ludovicchabant/vim-gutentags' 
"Plugin 'roxma/vim-tmux-clipboard'
Plugin 'chrisbra/unicode.vim'
" does not support async
"Plugin 'vim-syntastic/syntastic' 
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'vimwiki/vimwiki'
Plugin 'varung/vim-ipythonsend'
" Plugin 'tpope/vim-vinegar'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'yegappan/mru'

" jump to lines by indent, [-+= ]-+=
Plugin 'jeetsukumaran/vim-indentwise'
"perhaps we don't need both of these
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'jlanzarotta/bufexplorer'
" Plugin 'vim-scripts/repeatable-motions.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'chrisbra/vim-autoread'
Plugin 'junegunn/goyo.vim'
"Plugin 'fatih/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'dense-analysis/ale'

Plugin 'jupyter-vim/jupyter-vim'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'tmhedberg/SimpylFold'
Plugin 'varung/vim-open-url'
" needs to be yarn installed
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-tsserver']


" All of your Plugins must be added before the following line
call vundle#end()            " required


" CTRL+b opens the buffer list
" gz in command mode closes the current buffer
map gz :bdelete<cr>
" g[bB] in command mode switch to the next/prev. buffer
map gb :bnext<cr>
map gB :bprev<cr>


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

" Switch Windows and maximize in one keypress
"set wmh=0

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 


" make tab sizes smaller (4 instead of 8) and all spaces...
set sw=2
set ts=2
set ic
set expandtab
set smarttab
" set smartindent
set cindent
set comments=sl:/**,mb:\ *,elx:\ */
" vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent		" always set autoindenting on
set backup
if !isdirectory($HOME."/.vim/backupdir")
    silent! execute "!mkdir ~/.vim/backupdir"
endif
set backupdir=~/.vim/backupdir
if !isdirectory($HOME."/.vim/swapfiles")
    silent! execute "!mkdir ~/.vim/swapfiles"
endif
set directory=~/.vim/swapfiles//
"not generate .swap

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hlsearch

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


nmap <F2> :cp<CR>
nmap <F3> :cn<CR>
nmap <F4> :grep <C-R>" *.cpp *.h <CR>
nmap <F5> :redraw! <CR>
nmap <F6> :tp<CR>
nmap <F7> :tn<CR>

"RENUMBER LINES, useful for lists
nmap <F8> :'<,'>! awk '/[0-9]+\. .*/ { $1 = i++ "."} {print}'<CR>
redraw!

"" VARUN ADDED
" fix meta-keys which generate <esc>a .. <esc>z
"let c='a'
"while c != 'z'
"    exec "set <M-".toupper(c).">=\e".c
"    exec "imap \e".c." <M-".toupper(c).">"
"    let c = nr2char(1+char2nr(c))
"endw 

imap <C-D> <C-R>=strftime('%c')<C-M> :
set statusline+=%{gutentags#statusline()}
set statusline+=%F
set statusline+=%l

let g:tagbar_left=1
set mouse=a

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

" autocomplete search subdirectories
set path+=**
set wildmenu
" use :b blah<tab> to find buffer

" remove searching included files(rarely what I want)
setglobal complete-=i


" copy to attached terminal using the yank(1) script:
" https://github.com/sunaku/home/blob/master/bin/yank
function! Yank(text) abort
  let escape = system('yank', a:text)
  if v:shell_error
    echoerr escape
  else
    call writefile([escape], '/dev/tty', 'b')
  endif
endfunction
noremap <silent> <Leader>y y:<C-U>call Yank(@0)<CR>


let g:exuberant_ctags_exclude="cache"

" it's just too slow
set complete -=i

 
"set statusline=file:%f\ line:%l\ buffer:%n
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_auto_jump = 0
"let g:syntastic_python_checkers = ['mypy', 'pyflakes']
"let g:syntastic_aggregate_errors = 1

let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 1
hi SpellBad term=reverse ctermbg=darkgreen

" allow buffers with changed content to be switched out of and stay hidden
set hidden

hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=Blue guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=DarkGrey guibg=#000000 cterm=none gui=none
inoremap <C-A> <C-R>=strftime("%H:%M:%S")<CR>



map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
"map <C-N> <Esc>:bn<CR>
"map <C-P> <Esc>:bN<CR>

"tnoremap <Esc> <C-\><C-n>
tnoremap <esc><esc> <c-\><c-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

map <C-C> :s/^/\/\//<CR>

" start without folding. hit zi to flip
set foldlevelstart=10


fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfunction

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call TrimWhitespace()
command! TrimWhitespace call TrimWhitespace()


autocmd FileType text setlocal nocindent

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"" Make NERDTree open files with single click
let g:NERDTreeMouseMode = 3
let NERDTreeShowHidden = 1

"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


" tell ctrlp to only search directory vim is in
let g:ctrlp_working_path_mode = 1

function! SendToTerm() range
  let g:terminal_buffer=term_list()[0]
  let l:data = join(getline(a:firstline, a:lastline),"\r\n")
  call term_sendkeys(g:terminal_buffer, "\e[200~\n\r\n"..l:data.."\r\n\e[201~\<CR>")
endfunction
nnoremap <leader>ei :call SendToTerm()<cr>
vnoremap <leader>ei :call SendToTerm()<cr>'>

command Ipy :vertical botright terminal ipython
command Ish :vertical botright terminal
command Maximize :vertical resize 100 | resize 100
command! -nargs=+ NewGrep execute 'silent grep! <args>' | copen 20
command! -nargs=+ Vg execute 'vimgrep <args>' | copen 20

" vimwiki settings
let g:vimwiki_list = [{
	\'path': '$HOME/Dropbox/vimwiki',
	\'template_path': '$HOME/Dropbox/vimwiki/templates/',
	\'template_default': 'default',
	\'syntax': 'default',
	\'ext': '.md',
	\'path_html': '$HOME/Dropbox/vimwiki/site_html/',
	\'template_ext': '.html',
  \'auto_tags': 0, 'auto_export': 0,
  \'auto_diary_index': 0,
  \'links_space_char': '_',
  \'diary_caption_level': 2,
  \}]

  
" \'nested_syntaxes': {'python': 'python', 'cpp': 'c++', 'c':'c'},
let g:vimwiki_auto_header=1
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,img,script'
let g:tagbar_type_vimwiki = { 'ctagstype':'vimwiki', 'kinds':['h:header'], 'sro':'&&&' , 'kind2scope':{'h':'header'} , 'sort':0 , 'ctagsbin':'$HOME/Dropbox/vimwiki/vwtags.py', 'ctagsargs': 'default'}

set clipboard=unnamed,unnamedplus
command! -nargs=+ Vwt execute 'VimwikiSearchTags <args>' | lopen
iab <expr> ts; strftime("%T")
iab <expr> dt; strftime("%D")
iab <expr> dts; strftime("%Y-%m-%d %T")
iab latex: {{$%align% <CR>}}$
iab <expr> created: strftime("created: %D %T")
set writebackup
set swapfile

" reload current file, and jump to last line, ignoring any changes
noremap <F5> :e!<cr>G<cr>
set whichwrap=h,l
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
tmap <C-w><C-b>  <C-\><C-n><C-b>
noremap <leader>tb :Tagbar<CR>

" shortcuts for next and previous tab
noremap H gT
noremap L gt

let g:vimwiki_key_mappings =
    \ {
    \   'all_maps': 1,
    \   'global': 1,
    \   'headers': 1,
    \   'text_objs': 1,
    \   'table_format': 1,
    \   'table_mappings': 1,
    \   'lists': 1,
    \   'links': 1,
    \   'html': 1,
    \   'mouse': 1,
    \ }


set noequalalways
"""fix mouse past 220 column
set ttymouse=sgr

let g:netrw_altv=1
let g:netrw_preview=1
let g:netrw_winsize = 80
let g:netrw_list_hide = '^\.\.\=/\=$,.DS_Store,.idea,.git,__pycache__,venv,node_modules,*\.o,*\.pyc,.*\.swp'
let g:netrw_hide = 1

" split by default
let g:netrw_browse_split = 4
let g:netrw_liststyle = 0
let g:netrw_use_errorwindow = 2

" map <C-t> :vert botright terminal<CR> 

set viewoptions=folds
"augroup remember_folds
"  autocmd!
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent! loadview
"augroup END


function! IndentLevel(lnum)
    return (indent(a:lnum) / &shiftwidth)
endfunction

function! NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif

        let current += 1
    endwhile

    return -2
endfunction

" Key idea is just the ">" lets merge the current one with the next one while
" while still separating it from the previous one
" https://learnvimscriptthehardway.stevelosh.com/chapters/49.html
function! VarunFold(lnum)
  if getline(a:lnum) =~? '\v^\s*$'
    return '-1'
  endif

  let this_indent = IndentLevel(a:lnum)
  let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

  if next_indent == this_indent
    return this_indent
  elseif next_indent < this_indent
    return this_indent
  elseif next_indent > this_indent
    return '>' . next_indent
  endif
endfunction

augroup VimrcAuGroup
  autocmd!
  autocmd FileType vimwiki set foldexpr=VarunFold(v:lnum)
augroup END

let g:vimwiki_folding='custom'
set foldmethod=expr

:py3 from vim import *
noremap <leader>py :'<,'>py3do current.line = current.line + " = " + str(eval(line))

" stop autocompleting so much
let g:jedi#popup_on_dot = 0

" command to download a file and save it to files folder and include a wiki
" link to it
vmap <Leader>g :! python ~/Dropbox/vimwiki/files/download_here.py %
nmap <Leader>g :.! python ~/Dropbox/vimwiki/files/download_here.py %

let g:vimwiki_use_calendar=1
set background=dark

function! Vhtml()
  silent! execute 'Vimwiki2HTML'
  call system('/home/varung/Dropbox/vimwiki/site_html/reload-chrome-nix &')
endfunction
command! Vhtml call Vhtml()

nmap <Leader>vh :Vhtml<CR>
colorscheme desert


" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
" nnoremap <Leader>b :bp<CR>
" nnoremap <Leader>f :bn<CR>
" nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" list allow choosing
nnoremap <Leader>l :ls<CR>:b<space>
map <C-b> <esc>:ls<CR>:b<space>

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

set mousemodel=popup_setpos
" make yank in visual mode jump to the end of the selection after
" vnoremap y y'> 


imap <C-s> <ESC>:w<CR>i

" folding now just colors the text differently and adds dashes at the end
set foldtext=MyFoldText()
" hide the dashes that vim wants to put after it
set fillchars=stl:^,stlnc:\ ,vert:\|,fold:-,diff:-,fold:\ 
function MyFoldText()
  let line = getline(v:foldstart)
  " if line has a - at the beginning, replace with +
  let sub = substitute(line, '^(\s+)-', '\1+')
  return line
endfunction

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=90

  "augroup filetype_py
  "  autocmd!
  "  autocmd FileType python setlocal foldmethod=indent shiftwidth=4 relativenumber nu
  "augroup end
  
  augroup filetype_wiki
    autocmd!
    autocmd FileType vimwiki map <C-G> :VimwikiGoto 
  augroup end

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

endif " has("autocmd")

nmap <leader>em [mv]Mj<leader>ei


function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

function! Jump(jump)
  let j = a:jump
  echo j
  execute "normal " . j . "\<c-o>"
endfunction

"function! JumpToNextBufferInJumplist(dir) " 1=forward, -1=backward
"  let jl = getjumplist() | let jumplist = jl[0] | let curjump = jl[1]
"  let searchrange = range(curjump-1,0,-1)
"  for i in searchrange
"      if jumplist[i]["bufnr"] != bufnr('%')
"          let n = (i - curjump) * a:dir
"          echo "Executing ".jumpcmdstr." ".n." times."
"          execute "silent normal! ".n.jumpcmdchr
"          break
"      endif
"  endfor
"  echo "wtf"
"endfunction
" not sure these work properly
" nmap <leader><C-O> :call JumpToNextBufferInJumplist(-1)<CR>
" nmap <leader><C-I> :call JumpToNextBufferInJumplist( 1)<CR>


" set switchbuf+=uselast

" map J <Plug>(easymotion-bd-jk)
let g:ale_cuda_nvcc_options='-I/home/varung/miniconda3/envs/tess/lib/python3.7/site-packages/torch/include -I/home/varung/miniconda3/envs/tess/lib/python3.7/site-packages/torch/include/torch/csrc/api/include -I/home/varung/miniconda3/envs/tess/lib/python3.7/site-packages/torch/include/TH -I/home/varung/miniconda3/envs/tess/lib/python3.7/site-packages/torch/include/THC -I/home/varung/miniconda3/envs/tess/include -I/home/varung/miniconda3/envs/tess/include/python3.7m -std=c++14'


" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" Write this in your vimrc file
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

map s <Plug>(easymotion-jumptoanywhere)
nnoremap <silent> <F11> :YRShow<CR>

" highlight word without jumping to it
nnoremap * *``
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['package.json', '.git']
let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]
let g:gutentags_ctags_exclude = [
      \ '*.git', '*.svg', '*.hg',
      \ '*/tests/*',
      \ 'build',
      \ 'dist',
      \ '*sites/*/files/*',
      \ 'bin',
      \ 'node_modules',
      \ 'bower_components',
      \ 'cache',
      \ 'compiled',
      \ 'docs',
      \ 'example',
      \ 'bundle',
      \ 'vendor',
      \ '*.md',
      \ '*-lock.json',
      \ '*.lock',
      \ '*bundle*.js',
      \ '*build*.js',
      \ '.*rc*',
      \ '*.json',
      \ '*.min.*',
      \ '*.map',
      \ '*.bak',
      \ '*.zip',
      \ '*.pyc',
      \ '*.class',
      \ '*.sln',
      \ '*.Master',
      \ '*.csproj',
      \ '*.tmp',
      \ '*.csproj.user',
      \ '*.cache',
      \ '*.pdb',
      \ 'tags*',
      \ 'cscope.*',
      \ '*.css',
      \ '*.less',
      \ '*.scss',
      \ '*.exe', '*.dll',
      \ '*.mp3', '*.ogg', '*.flac',
      \ '*.swp', '*.swo',
      \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
      \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
      \ '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
      \ ]

let g:ctrlp_map = '<c-f>'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_match_current_file = 1
let g:ctrlp_by_filename = 0

" vimwiki split link 
nnoremap <leader>vs :VimwikiVSplitLink<cr>
