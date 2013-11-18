set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
:" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'refactor-rails.vim'

" Bundle 'MarcWeber/ultisnips'
" Bundle 'SirVer/ultisnips'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

Bundle 'L9'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'

" helps to end certain structures automatically. In Ruby, this means adding
" end after if, do, def
Bundle 'tpope/vim-endwise'
" Just one NERDTree, always and ever. It will always look the same in all
" tabs, including expanded/collapsed nodes, scroll position etc.
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'nerdtree-ack'
Bundle 'AutoComplPop'

" Pasting in Vim with indentation adjusted to destination context
Bundle 'sickill/vim-pasta'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'kana/vim-textobj-user'
Bundle 'matchit.zip'
Bundle 'nelstrom/vim-textobj-rubyblock'

" Indentation based text objects
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'Raimondi/delimitMate'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'tpope/vim-repeat'

Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-bundler'
Bundle 'plasticboy/vim-markdown'

Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'

Bundle 'mivok/vimtodo'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jimmyhchan/dustjs.vim'
Bundle 'Lokaltog/vim-easymotion'

Bundle 'svndiff'
Bundle 'yaymukund/vim-rabl'

" http://www.vim.org/scripts/script.php?script_id=1905"
map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

Bundle 'camelcasemotion'

" nodejs
Bundle 'digitaltoad/vim-jade'


filetype plugin indent on     " required!



let mapleader = ","
imap jj <Esc>

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window for multiple buffers, and/or:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
" set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" set cmdheight=2

" Display line numbers on the left
set number
set numberwidth=5

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

set nobackup
set nowritebackup
set history=500		" keep 500 lines of command line history
set incsearch		" do incremental searching

" When files were edited outside vim
set autoread

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=10

"
" if has("folding")
" set foldenable
" set foldmethod=syntax
" set foldlevel=1
" set foldnestmax=2
" set foldtext=strpart(getline(v:foldstart),0,50).'\ ...\ '.substitute(getline(v:foldend),'^[\ #]*','','g').'\ '
" endif

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Maps autocomplete to Control K(Netbeans style)
imap <C-K> <C-P>

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Press Shift+P while in visual mode to replace the selection without
" overwriting the default register
" vmap P p :call setreg('"', getreg('0')) <CR>

" Display extra whitespace
"set list listchars=tab:»·,trail:·

" Edit routes
command! Rroutes :e config/routes.rb
command! RTroutes :tabe config/routes.rb
command! Ctags :! ctags -R --extra=+f --exclude=.git --exclude=log *

" Color scheme
colorscheme vividchalk
" highlight NonText guibg=#060606
" highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Tab completion options
set wildmode=list:longest,list:full
set complete=.,w,t


" Tags
" let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Window navigation
" nmap <C-J> <C-W><C-J>
" nmap <C-K> <C-W><C-K>

" Rails configuration
" autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb
" autocmd User Rails Rnavcommand config config -glob=**/* -suffix=.rb -default=routes
" autocmd User Rails map <Leader>p :Rstep
" autocmd User Rails map <Leader>sp :RSstep
" autocmd User Rails map <Leader>tp :RTstep
" autocmd User Rails map <Leader>m :Rmodel
" autocmd User Rails map <Leader>c :Rcontroller
" autocmd User Rails map <Leader>v :Rview
" autocmd User Rails map <Leader>u :Runittest
" autocmd User Rails map <Leader>f :Rfunctionaltest
" autocmd User Rails map <Leader>i :Rintegrationtest
" autocmd User Rails map <Leader>h :Rhelper
" autocmd User Rails map <Leader>tm :RTmodel
" autocmd User Rails map <Leader>tc :RTcontroller
" autocmd User Rails map <Leader>tv :RTview
" autocmd User Rails map <Leader>tu :RTunittest
" autocmd User Rails map <Leader>tf :RTfunctionaltest
" autocmd User Rails map <Leader>ti :RTintegrationtest
" autocmd User Rails map <Leader>sm :RSmodel
" autocmd User Rails map <Leader>sc :RScontroller
" autocmd User Rails map <Leader>sv :RSview
" autocmd User Rails map <Leader>su :RSunittest
" autocmd User Rails map <Leader>sf :RSfunctionaltest
" autocmd User Rails map <Leader>si :RSintegrationtest
" autocmd User Rails map <Leader>g :Rconfig
" autocmd User Rails map <Leader>sg :RSconfig
" autocmd User Rails map <Leader>tg :RTconfig

"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>
nnoremap 1 :tabprevious<CR>
nnoremap 2 :tabnext<CR>

" autocmd VimLeavePre * mksession! .vim.sess

"autocmd vimenter * NERDTree
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <Leader>1 :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set statusline=
"set statusline+=%#todo#  "switch to todo highlight
"set statusline+=%F       "full filename
"set statusline+=%#error# "switch to error highlight
"set statusline+=%y       "filetype
"set statusline+=%*       "switch back to normal statusline highlight
"set statusline+=%l       "line number"

set statusline+=%#todo#
set statusline+=%{fugitive#statusline()}
set statusline+=%*
set statusline+=%F       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"autocmd bufwritepost * :call Svndiff("")
noremap <F3> :call Svndiff("prev")<CR>
noremap <F4> :call Svndiff("next")<CR>
noremap <F5> :call Svndiff("clear")<CR>

hi DiffAdd      ctermfg=0 ctermbg=2 guibg='green'
hi DiffDelete   ctermfg=0 ctermbg=1 guibg='red'
hi DiffChange   ctermfg=0 ctermbg=4 guibg='blue'

function! CloseHiddenBuffers()
  " Tableau pour memoriser la visibilite des buffers
  let visible = {}
  " Pour chaque onglet...
  for t in range(1, tabpagenr('$'))
    " Et pour chacune de ses fenetres...
    for b in tabpagebuflist(t)
      " On indique que le buffer est visible.
      let visible[b] = 1
    endfor
  endfor
  " Pour chaque numero de buffer possible...
  for b in range(1, bufnr('$'))
    " Si b est un numero de buffer valide et qu'il n'est pas visible, on le
    " supprime.
    if bufexists(b) && !has_key(visible, b)
      " On ferme donc tous les buffers qui ne valent pas 1 dans le tableau et qui
      " sont pourtant charges en memoire.
      execute 'bwipeout' b
    endif
  endfor
  NERDTree
  NERDTreeClose
endfun

ca bo :call CloseHiddenBuffers()
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nmap <F8> :TagbarToggle<CR>
nmap <F9> :TagbarOpenAutoClose<CR>


" Split join
nmap <Leader>s :SplitjoinSplit<CR>
nmap <Leader>j :SplitjoinJoin<CR>

if has('gui_running')
  set guifont=Ubuntu\ Mono\ 13
  set t_vb=
endif

" By default the plug-in automatically updates and highlights your tags when
" you stop typing for a moment. If you want to disable automatic highlighting
" while keeping automatic updating enabled you can set this option to false:
let g:easytags_auto_highlight = 0

set notagbsearch

" add todo command to auto open notes
ca todo e ~/Documents/notes/todo

let g:tagbar_type_ruby = {
      \ 'kinds' : [
      \ 'm:modules',
      \ 'c:classes',
      \ 'd:describes',
      \ 'C:contexts',
      \ 'f:methods',
      \ 'F:singleton methods'
      \ ]
      \ }

let g:rails_projections = {
      \ "app/services/drivy/*.rb": {
      \   "command": "service",
      \   "template": "class %S < Drivy::Service\nend",
      \   "test": [
      \     "spec/services/%s_spec.rb"
      \   ]
      \ },
      \ "spec/services/*_spec.rb": {
      \   "alternate": 'app/services/drivy/%s.rb'
      \ },
      \ "app/forms/*.rb": {
      \   "command": "form",
      \   "template": "class %S < Drivy::Form\nend",
      \   "test": [
      \     "spec/forms/%s_spec.rb"
      \   ]
      \ },
      \ "spec/factories/*.rb": {
      \   "command": "factory",
      \   "template": "FactoryGirl.define do\n factory: %S do\n end\n \nend",
      \ }
      \ }

" file mappings
au BufRead,BufNewFile *.hamlc set ft=haml

" enable mouse, yey!
set ttymouse=xterm2
set mouse=n
