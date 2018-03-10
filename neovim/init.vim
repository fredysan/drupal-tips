call plug#begin('~/AppData/Local/nvim/plugged')
call plug#begin('~/AppData/Local/nvim/plugged')
" Git
Plug 'tpope/vim-fugitive' " Use git from vim via Git, Gdiff, Gstatus, ...
Plug 'airblade/vim-gitgutter' "Shows git changes in the number's column

" looking
Plug 'mhinz/vim-startify' " Via :Startify shows a welcome screen
Plug 'Yggdroot/indentLine' " Shows lines to visualize identations
Plug 'myusuf3/numbers.vim' " Let me alternate over relative and normal numbers
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ianks/gruvbox'
Plug 'altercation/vim-colors-solarized'
" Plug 'ryanoasis/vim-devicons'

" completion/templating
Plug 'jiangmiao/auto-pairs' " 
Plug 'ervandew/supertab' " Use tab for autocompletition
Plug 'scrooloose/nerdcommenter' " Commenting code
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'evidens/vim-twig'
Plug 'valloric/youcompleteme'

" command extention
Plug 'easymotion/vim-easymotion'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'wellle/targets.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'repeat.vim'

" utils
Plug 'neomake/neomake'
Plug 'kassio/neoterm'
Plug 'sjl/gundo.vim'
Plug 'chrisbra/NrrwRgn'
" Plug 'Mark--Karkat'

" misc
Plug 'asins/vimcdoc'

Plug 'CodeFalling/fcitx-vim-osx'
"Plug 'lilydjwg/fcitx.vim'
Plug 'junegunn/vim-github-dashboard'

" documentation
Plug 'rhysd/nyaovim-markdown-preview'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'itchyny/calendar.vim'
Plug 'junegunn/vim-journal'

" navigation
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'jremmen/vim-ripgrep' " Under testing - I don't like I need to quit using :q
Plug 'jlanzarotta/bufexplorer'
" Plug 'wesleyche/SrcExpl' "Use ctags - Crashed after a while
" Plug 'taglist.vim' "Similar to Tagbar
" Plug 'rizzatti/dash.vim' "Only works on mac
" Plug 'eugen0329/vim-esearch' "Esearch let you search over multiple files

call plug#end()

" Fundamental settings
set fileencoding=utf-8
set fileformat=unix
set fileformats=unix,dos,mac

filetype on
filetype plugin on
filetype plugin indent on
syntax on

" Some useful settings
set smartindent
set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent
set foldenable
set foldmethod=indent "folding by indent
set foldlevel=99
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored
let mapleader = ","
imap jj <Esc>
imap kk <Esc>
imap ññ <Esc>A;<Esc>
nmap <a-w> <leader><leader>w
nmap <a-b> <leader><leader>b
nmap <F3> :NERDTreeToggle
nmap <F8> :TagbarToggle<cr>

" Lookings
set termguicolors
set number           "line number
" set cursorline       "hilight the line of the cursor
" set cursorcolumn     "hilight the column of the cursor
set nowrap           "no line wrapping
colorscheme atom     "use the theme gruvbox
set background=dark "use the dark version of gruvbox
" change the color of chars over the width of 80 into blue
" (uncomment to enable it)
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:python3_host_prog = 'C:\Users\fredy.sanchez\AppData\Local\Programs\Python\Python35-32\python.exe'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" Easymotion zfa will search for A or a
let g:EasyMotion_smartcase = 1

" Shortcuts
  " go => go to anywhere
    nmap go <Plug>(easymotion-jumptoanywhere)
  " <c-v> => for pasting
  "  imap <c-v> <esc>"+pa
  " <c-h/j/k/l> => hjkl in normal mode (but there is a bug mapping <c-h>)
    imap <c-h> <left>
    imap <c-j> <down>
    imap <c-k> <up>
    imap <c-l> <right>
  " \cl => redraw the screen
    nmap <leader>l <c-l><c-l>
    imap <leader>l <esc><leader>la
  " <F2> => fold/unfold current code
  " tips: zR => unfold all; zM => fold all
    nnoremap <F2> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
  " <esc> => go back to normal mode (in terminal mode)
    tnoremap <Esc> <C-\><C-n> 
  " <F3> => popup the file tree navigation)
    nmap <F3> :NERDTreeToggle<CR>
  " use t{h,j,k,l} to switch between different windows
    noremap tk <c-w>k
    noremap tj <c-w>j
    noremap th <c-w>h
    noremap tl <c-w>l
    nmap twj :resize +10<cr>
    nmap twk :resize -10<cr>
    nmap twh :vertical resize -10<cr>
    nmap twl :vertical resize +10<cr>
  " t[number] => switch to the file showed in the top tabs
  " t[ t] => prev tab/next tab
    nmap t1 <Plug>AirlineSelectTab1
    nmap t2 <Plug>AirlineSelectTab2
    nmap t3 <Plug>AirlineSelectTab3
    nmap t4 <Plug>AirlineSelectTab4
    nmap t5 <Plug>AirlineSelectTab5
    nmap t6 <Plug>AirlineSelectTab6
    nmap t7 <Plug>AirlineSelectTab7
    nmap t8 <Plug>AirlineSelectTab8
    nmap t9 <Plug>AirlineSelectTab9
    nmap t[ <Plug>AirlineSelectPrevTab
    nmap t] <Plug>AirlineSelectNextTab
  " ts => toggle the srcExpl (for source code exploring)
    nnoremap ts :SrcExplToggle<CR>
  " tg => toogle the gundo
    nnoremap tg :GundoToggle<CR>
  " tb => open the tagbar
    nmap tb :TlistClose<CR>:TagbarToggle<CR>
  " ti => taglist
    nmap ti :TagbarClose<CR>:Tlist<CR>
  " <s-enter> => toggle the terminal
    if exists('nyaovim_version')
      nnoremap <silent> <s-cr> :Ttoggle<cr>
    else " in terminal use t<enter>
      nmap t<CR> :Ttoggle<CR> 
    endif
  " tt => type the command for the terminal
    nnoremap tt :T<space>
  " te => send current line/selected lines to the terminal
    nnoremap <silent> te :TREPLSend<CR>
    xnoremap <silent> te :TREPLSend<CR>
  " tE => send the thole current file to the terminal
    nnoremap <silent> tE :TREPLSendFile<CR>
  " \t => goto normal mode and press t (e.g. \t<enter> to toggle the terminal)
    imap <leader>t <esc>t
  " \g => scroll to bottom in markdown preview (insert mode)
    imap <leader>g <esc><leader>Ga
  " \jd => GoTo the definition
    "nnoremap <leader>jd :YcmCompleter GoTo<CR>
  " \e => edit only current/selected line(s) in normal/visual mode
  " z + [fFtTwWbBeE(ge)(gE)jknNs] => easy motion
    map zf <Leader><Leader>f
    map zF <Leader><Leader>F
    " map zt <Leader><Leader>t
    map zT <Leader><Leader>T
    map zw <Leader><Leader>w
    map zW <Leader><Leader>W
    " map zb <Leader><Leader>b
    map zB <Leader><Leader>B
    map ze <Leader><Leader>e
    map zE <Leader><Leader>E
    map zge <Leader><Leader>ge
    map zgE <Leader><Leader>gE
    map zj <Leader><Leader>j
    map zk <Leader><Leader>k
    map zn <Leader><Leader>n
    map zN <Leader><Leader>N
    map zs <Leader><Leader>s
  " zn => NrrwRgn in normal/visual mode
    nmap zn :NR<CR>
    xmap zn :NR<CR>
  " zm => multipleCursor by regular expression
    nnoremap zm :MultipleCursorsFind<space>
    xnoremap zm :MultipleCursorsFind<space>
    xmap zI zm^<cr>I
    xmap zA zm$<cr>A
  " Saving
    nmap <leader>w :w<CR>
  " Space as colom
    noremap <space> :
  " Replace f with easymotion
    nmap f <leader><leader>f
  " copy & paste to system clipboard
    vnoremap <Leader>y "+y
    nnoremap <Leader>y "+y
    nnoremap <Leader>yy "+yy
    nnoremap <Leader>Y "+y$
    vnoremap <Leader>d "+d
    nnoremap <Leader>p "+p
    nnoremap <Leader>P "+P
    vnoremap <Leader>p "+p
    vnoremap <Leader>P "+P
  " Change the whole word 
    nnoremap cw ciw
    nnoremap dw diw
  " Paste with <c-v>
    imap <c-v> <c-r>*<Esc>
  " 0 goes to the beginning of the line
    nmap 0 ^
  " Search in project
    nmap <c-s-7> :Ag! 
  " Keep visual selection after indenting
    vnoremap > >gv
    vnoremap < <gv
  " Toogle numbers behavior
    nnoremap <leader>n :NumbersToggle<CR>
  " Hide search results
    nnoremap <leader>7 :noh<CR>
  " <leader>a To show the list of current buffers
    nnoremap <leader>a :BufExplorer<CR>

" Project location
let g:startify_bookmarks = [ {'ok': '~/Sites/OKCMS'}]
let g:startify_list_order = [
            \ ['   These are my sessions:'],
            \ 'sessions',
            \ ['   My most recently', '   used files'],
            \ 'files',
            \ ['   My most recently used files in the current directory:'],
            \ 'dir',
            \ ['   These are my bookmarks:'],
            \ 'bookmarks',
            \ ['   These are my commands:'],
            \ 'commands',
            \ ]
cd c:\Users\fredy.sanchez\Sites\OKCMS\cms\src

hi Pmenu    gui=NONE    guifg=#c5c8c6 guibg=#373b41
hi PmenuSel gui=reverse guifg=#c5c8c6 guibg=#373b41

filetype plugin indent on

" Fix NERDtree arrows on Windows
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:esearch = {
  \ 'adapter':    'ag',
  \ 'backend':    'vimproc',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

" New buffers as tabs
" map ,bt :bufdo tab split<CR>

" Search defaults
cd ~/Sites/OKCMS
noremap <C-P> <Esc>:CtrlP ~/Sites/OKCMS<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Split vertically on Gdiff
set diffopt+=vertical

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.theme set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on

nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

set mouse=nicr
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
