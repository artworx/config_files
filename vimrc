set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
:" required!
Plugin 'gmarik/vundle'

" Nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'taiansu/nerdtree-ag'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Comments
Plugin 'scrooloose/nerdcommenter'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'matthewsimo/angular-vim-snippets'

" Deps
Plugin 'L9'

" Syntax checking
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

" helps to end certain structures automatically. In Ruby, this means adding
" end after if, do, def
Plugin 'tpope/vim-endwise'

" Autocomplete
Plugin 'AutoComplPop'

" Pasting in Vim with indentation adjusted to destination context
Plugin 'sickill/vim-pasta'

" RUBY
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tpope/vim-bundler'
Plugin 'lmeijvogel/vim-yaml-helper'
Plugin 'refactor-rails.vim'

" Indentation

" custom text object for selecting ruby blocks.
Plugin 'kana/vim-textobj-user'
Plugin 'matchit.zip'
Plugin 'nelstrom/vim-textobj-rubyblock'

" Indentation based text objects
Plugin 'michaeljsmith/vim-indent-object'

" This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.,
Plugin 'Raimondi/delimitMate'

Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'

" CtrlP extension for fuzzy-search in tag matches.
Plugin 'kien/ctrlp.vim'
Plugin 'ivalkeen/vim-ctrlp-tjump'

" better-looking, more functional vim statuslines
Plugin 'bling/vim-airline'
" Plugin 'Lokaltog/vim-powerline'

" sidebar that displays the ctags-generated tags of the current file
Plugin 'majutsushi/tagbar'

" A vim plugin that simplifies the transition between multiline and single-line code
Plugin 'AndrewRadev/splitjoin.vim'

" repeat.vim: enable repeating supported plugin maps with "."
Plugin 'tpope/vim-repeat'

" abolish.vim: easily search for, substitute, and abbreviate multiple variants
" of a word
Plugin 'tpope/vim-abolish'

" Automated tag file generation and syntax highlighting of tags in Vim
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

" Vim motions on speed!
Plugin 'Lokaltog/vim-easymotion'

" Vim script for text filtering and alignment
Plugin 'godlygeek/tabular'

" Syntax files
Plugin 'aklt/plantuml-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'yaymukund/vim-rabl'
Plugin 'slim-template/vim-slim'
Plugin 'plasticboy/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'elixir-lang/vim-elixir'
Plugin 'solarnz/thrift.vim'
Plugin 'rhysd/vim-crystal'
Plugin 'ekalinin/Dockerfile.vim'

" front for ag, A.K.A. the_silver_searcher.
Plugin 'rking/ag.vim'

" Kick off builds and test suites using one of several asynchronous adapters
Plugin 'tpope/vim-dispatch'

" Motions
Plugin 'camelcasemotion'

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

" Use <F12> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F12>

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
set statusline+=%#todo#
set statusline+=%{fugitive#statusline()}
set statusline+=%*
set statusline+=%F       "tail of the filename
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

hi DiffAdd      ctermfg=0 ctermbg=2 guibg='green'
hi DiffDelete   ctermfg=0 ctermbg=1 guibg='red'
hi DiffChange   ctermfg=0 ctermbg=4 guibg='blue'

hi GitGutterAdd      ctermfg=0 ctermbg=2 guibg='green'
hi GItGutterDelete   ctermfg=0 ctermbg=1 guibg='red'
hi GitGutterChange   ctermfg=0 ctermbg=4 guibg='blue'

" highlight search term
hi Search cterm=NONE ctermfg=black ctermbg=white

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '!'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '<'

function DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction

ca bo :call DeleteHiddenBuffers()

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

let g:easytags_async = 1
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
      \ },
      \ "app/assets/javascripts/backbone/apps/*_app.js.coffee":  {
      \   "command": "jmodule",
      \ },
      \ "app/assets/javascripts/backbone/entities/*.js.coffee":  {
      \   "command": "jentity",
      \ },
      \ "app/assets/javascripts/backbone/apps/*_controller.js.coffee":  {
      \   "command": "jcontroller",
      \ },
      \ "app/assets/javascripts/backbone/apps/*_view.js.coffee":  {
      \   "command": "jview",
      \ },
      \ }

" file mappings
au BufRead,BufNewFile *.hamlc set ft=haml

" enable mouse, yey!
set ttymouse=xterm2
set mouse=n

au BufNewFile,BufRead *.ejs     set filetype=ejs

" declare global configuration dictionary so that config options can be added:
let g:UltiSnips = {}

" customize mappings, eg use snipmate like behaviour
" let g:UltiSnips.ExpandTrigger = "<tab>"
" " It does make sense to not use <tab> here, use UltiSnips default <c-j>
" let g:UltiSnips.JumpForwardTrigger = "<tab>"
" let g:UltiSnips.JumpBackwardTrigger = "<c-k>"

" Now its time to tell UltiSnips about which snippets to load.
" You do so for snipmate snippets and UltiSnips snippets individually.
" This example illustrates a setup loading snipmate snippets.

" See plugin/UltiSnips.vim, it has much additional documentation.
" Assuming you're not overrding the default implemenation in the
" VimL function SnippetFilesForCurrentExpansionDefaultImplementation.

" == UltiSnips snippets ==
" Because I want to use the snipmate snippets 'default' does not load
" filetype.snippets snippet files.
" SirVer called the snippets to be present for all filetypes "all".
" So this fork follows his convention. Compare with _ which is used by
" snipmate but means the same.
"
" Now the default implementation reads &filetype, looks up the key in the
" dictionary and falls back to the default entry if there is no filetype
" specific entry.
"
" Thus if you're editing a cpp file ['cpp'] means that
" &rtp/UltiSnips/cpp.snippets and ..../all.snippets will be loaded if
" UltiSnips directory happens to be in your [._].vim directory only.
"
" For all other filetypes 'default' applies, which loads all.snippets
" from all &rtp/UltiSnips directories.
let g:UltiSnips.UltiSnips_ft_filter = {
      \ 'default' : {'filetypes': ['all'] },
      \ 'all' : {'filetypes': ['all'] },
      \ 'cpp' : {'filetypes': ['cpp', 'all'], 'dir-regex': '[._]vim/UltiSnips$' },
      \ }
" In the 'default' case the special word FILETYPE will be replaced by
" &filetype, thus ['all','FILETYPE'] will load &rtp/html.snippets if
" you're editing html files.

" choices could be nasty, never show them
" let g:UltiSnips.always_use_first_snippet = 1

" == snipmate snippets ==
" _.snippets are meant to be snippets to be loaded always which is why
" they are contained in all cases
" This is pretty much the same as above:
" * For html, xhtml snipmate &rtp/snippets/javascript snippets get loaded
" * For cpp don't load any snipmate &rtp/snippets - because in this
"   example UltiSnips snippets are preferred
let g:UltiSnips.snipmate_ft_filter = {
      \ 'default' : {'filetypes': ["FILETYPE", "_"] },
      \ 'html'    : {'filetypes': ["html", "javascript", "_"] },
      \ 'xhtml'    : {'filetypes': ["xhtml", "html", "javascript", "_"] },
      \ 'cpp'    : {'filetypes': [] },
      \ 'javascript'    : {'filetypes': ["javascript", "javascript-jasmine", "angular_js"] },
      \ }

" Of course you want to adjust this to your own liking
"
" ejs files
au BufNewFile,BufRead *.ejs set filetype=html

" ivalkeen/vim-ctrlp-tjump
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*app/cache/*,*app/log/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" map W to w
"cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
command W w

set autoread
set clipboard=unnamed

silent execute "! mkdir -p ~/.vim/backup"
silent execute "! mkdir -p ~/.vim/tmp"

set backupdir=~/.vim/backup//
set directory=~/.vim/tmp//

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

vmap <F2> ! boxes -drb -f ~/.boxes-config<CR>
vmap <F3> ! html2haml<CR>

function! s:ChangeHashSyntax(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/:\([a-z0-9_]\+\)\s\+=>/\1:/g'
    call setpos('.', l:save_cursor)
endfunction

command! -range=% ChangeHashSyntax call <SID>ChangeHashSyntax(<line1>,<line2>)

"
" Plugin customizations

" plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

" camelcasemotion
map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

let g:syntastic_quiet_messages = { "type": "style" }

