set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/bundle')

" Much inspired from:
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" Auto complete plugin (only works on vim 8.0 and I cannot install it on OS
" 10.10
"Bundle 'Valloric/YouCompleteMe'

" Checking syntax of document on each save
Plugin 'vim-syntastic/syntastic'

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" Directories tree plugin
Plugin 'scrooloose/nerdtree'

" Git integration
Plugin 'tpope/vim-fugitive'

" PEP8 checking 
Plugin 'nvie/vim-flake8'

" Super searching with Ctrl-P command, search files, tags, ...
Plugin 'kien/ctrlp.vim'

" Powerline displaying current file, git branch, virtualenv
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Command-T plugin to open files and buffers, jump to tags, run commands...
Plugin 'wincent/command-t'

" Enable . to repeat a plugin operation
Plugin 'tpope/vim-repeat'

" Use surrounding operations (hopefully doesn't conflict vimtex)
Plugin 'tpope/vim-surround'

" Use surrounding operations (hopefully doesn't conflict vimtex)
Plugin 'tpope/vim-commentary'

" Use vim as TeX editor
Plugin 'lervag/vimtex'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Easily align equations, tables on same character
Plugin 'junegunn/vim-easy-align'

" Easily align equations, tables on same character using Tabular
Plugin 'godlygeek/tabular'

" Use easy dragging in visual modes
Bundle 'zirrostig/vim-schlepp'

" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///Users/jonathandoenz/Dropbox/vim/plugin'

" From Damian Conway's vimrc
"====[ Ensure autodoc'd plugins are supported ]===========
" Plugin '_autodoc.vim' " this file is not present

"=====[ Enable Nmap command for documented mappings ]================
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} " example how to include personal plugins
Plugin 'yankmatches.vim'

" =====[ Smart completion via <TAB> and <S-TAB> ]=============
Plugin 'smartcom.vim'

" =====[ Keep visual selection selected after a move ]=======
Plugin 'persistentvisuals.vim'

" END plugins set up


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Allow to specify line numbers where split occurs using :sp (split command)
set splitbelow
set splitright

" split navigations: Ctrl-j to move to the split below, Ctrl-k to split above,
" Ctrl-l to split right, Ctrl-h to split left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding/unfolding with the spacebar
nnoremap <space> za

" See the docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Navigate between tabs with tt and TT
nnoremap tt gt
nnoremap TT gT


" UltiSnips settings

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Python indentation stuff
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Standardization of indentation of other file types 
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Specify UTF8 encoding (important for Python 3)
set encoding=utf-8

" Customization of YouCompleteMe (cannot use this plugin on OS 10.10)
" closes the preview window
let g:ycm_autoclose_preview_window_after_completion=1
" Allows for space-g (or leader key-g) to goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Makes things look pretty in python files
let python_highlight_all=1
syntax on

" Color schemes based on vim mode
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" Hyde .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Turn line number on
set nu

" System clipboard
set clipboard=unnamed

" Nerdtree shown with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Shortcut to run python script
"filetype on "# is necessery if there was no other: filetype ... in the file
"autocmd FileType python nnoremap <buffer> <C-T> :exec '!clear; python' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F5> :exec '!clear; python' shellescape(@%, 1)<cr>

" Shortcut to run selection of code
"vnoremap <C-T> :exec '!python'<cr> 
"xnoremap <C-T> <esc>:'<,'>:!python<CR>
"vnoremap <F5> :!python<CR>
"or
xnoremap <F5> <esc>:'<,'>:!python<CR>

" Shortcut to type :!python from vim command mode
autocmd FileType python nnoremap <buffer> ;p :!python<Space>

" Enable vimtex plugin in .tex files
au BufNewFile,BufRead *.tex let g:vimtex_enabled=1
" Use Skim as pdf viewer for vimtex
let g:vimtex_view_method='skim'
" Prevent `latexmk` (or other build tools) from starting Skim and instead let vimtex start Skim through the callback feature (see :help vimtex_view_automatic)
let g:vimtex_view_automatic=1
" Enable forward searching in skim (it is buggy as of 24.05.2018)
map ,r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-r>=line('.')<CR> %<.pdf<CR>

" Damian Conway's inspired stuff from here

" Search for matches as you type
set incsearch

" Highlight all the search matches
set hlsearch
" remove highlighting is normally done by :nohlsearch
" let's use a shortcut to do it. Backspace is the choice here:
nmap <silent> <BS>  :nohlsearch<CR>

" Autosave after some vim commands such as :next 
" type :help autowrite for more help)
set autowrite

" Make the search case-insensitive if all lower-cases, but case-sensitive if
" any upper-case
set ignorecase
set smartcase

" Display the line and columns on last line
set ruler

" Constrain the maximum width of a line
"set textwidth=80

" Wrapped lines are indented 2 columns more than the line they are on
set wrap linebreak breakindent
set breakindentopt=shift:2,sbr
" an arrow is added where the line broke (made visible by :set list)
set showbreak=>

" Highlight current line
:set cursorline

" Fix deletion in insert and replace modes (important not to have space around
" equal sign)
:set backspace=indent,eol,start

" Highlight the characters on the 81st line to suggest to go back to line
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"==============[ Abbreviations ]================
" Quick save in any documents
	inoremap ,, <ESC>:w<CR>a
	nnoremap ,, :w<CR>

" TeX abbreviations
	autocmd FileType tex nmap ;; :w<CR><plug>(vimtex-compile)<plug>(vimtex-view)
	autocmd FileType tex imap ;; <ESC>:w<CR><plug>(vimtex-compile)<plug>(vimtex-view)a
	"autocmd FileType tex inoremap ,, <ESC>:w<CR>a
	"autocmd FileType tex nnoremap ,, :w<CR>
	autocmd FileType tex inoremap ;fr
				\begin{frame}{}<CR><CR><++><CR><CR>\end{frame}<CR><CR><++><Esc>6kf}la
	autocmd FileType tex inoremap ;fi \begin{fitch}<CR><CR>\end{fitch}<CR><CR><++><Esc>3kA
	autocmd FileType tex inoremap ;exe \begin{exe}<CR>\ex<Space><CR>\end{exe}<CR><CR><++><Esc>3kA
	autocmd FileType tex inoremap ;em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ;bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap ; <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<CR>a
	autocmd FileType tex inoremap ;it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ;ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ;cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ;glos {\gll<Space><++><Space>\\<CR><++><Space>\\<CR>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ;x \begin{xlist}<CR>\ex<Space><CR>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex inoremap ;ol \begin{enumerate}<CR><CR>\end{enumerate}<CR><CR><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;ul \begin{itemize}<CR><CR>\end{itemize}<CR><CR><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ;li <CR>\item<Space>
	autocmd FileType tex inoremap ;ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ;tab \begin{tabular}<CR><++><CR>\end{tabular}<CR><CR><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ;ot \begin{tableau}<CR>\inp{<++>}<Tab>\const{<++>}<Tab><++><CR><++><CR>\end{tableau}<CR><CR><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ;can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ;con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ;v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ;a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ;sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ;chap \chapter{}<CR><CR><++><Esc>2kf}i
	autocmd FileType tex inoremap ;sec \section{}<CR><CR><++><Esc>2kf}i
	autocmd FileType tex inoremap ;ssec \subsection{}<CR><CR><++><Esc>2kf}i
	autocmd FileType tex inoremap ;sssec \subsubsection{}<CR><CR><++><Esc>2kf}i
	autocmd FileType tex inoremap ;st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ;beg \begin{DELRN}<CR><++><CR>\end{DELRN}<CR><CR><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<CR>c
	autocmd FileType tex inoremap ;up <Esc>/usepackage<CR>o\usepackage{}<Esc>i
	autocmd FileType tex nnoremap ;up /usepackage<CR>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ;tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ;bt {\blindtext}
	autocmd FileType tex inoremap ;nu $\varnothing$
	autocmd FileType tex inoremap ;col \begin{columns}[T]<CR>\begin{column}{.5\textwidth}<CR><CR>\end{column}<CR>\begin{column}{.5\textwidth}<CR><++><CR>\end{column}<CR>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ;rn (\ref{})<++><Esc>F}i

"""LATEX Logical symbols
	autocmd FileType tex inoremap ;m $$<Space><++><Esc>2T$i
	autocmd FileType tex inoremap ;M $$$$<CR><CR><++><Esc>2k$hi
	autocmd FileType tex inoremap ;neg {\neg}
	autocmd FileType tex inoremap ;V {\vee}
	autocmd FileType tex inoremap ;or {\vee}
	autocmd FileType tex inoremap ;L {\wedge}
	autocmd FileType tex inoremap ;and {\wedge}
	autocmd FileType tex inoremap ;ra {\rightarrow}
	autocmd FileType tex inoremap ;la {\leftarrow}
	autocmd FileType tex inoremap ;lra {\leftrightarrow}
	autocmd FileType tex inoremap ;fa {\forall}
	autocmd FileType tex inoremap ;ex {\exists}
	autocmd FileType tex inoremap ;dia	{\Diamond}
	autocmd FileType tex inoremap ;box	{\Box}
	autocmd FileType tex inoremap ;gt	{\textgreater}
	autocmd FileType tex inoremap ;lt	{\textless}

	""".bib
	autocmd FileType bib inoremap ;a @article{<Enter><tab>author<Space>=<Space>"<++>",<Enter><tab>year<Space>=<Space>"<++>",<Enter><tab>title<Space>=<Space>"<++>",<Enter><tab>journal<Space>=<Space>"<++>",<Enter><tab>volume<Space>=<Space>"<++>",<Enter><tab>pages<Space>=<Space>"<++>",<Enter><tab>}<Enter><++><Esc>8kA,<Esc>i
	autocmd FileType bib inoremap ;b @book{<Enter><tab>author<Space>=<Space>"<++>",<Enter><tab>year<Space>=<Space>"<++>",<Enter><tab>title<Space>=<Space>"<++>",<Enter><tab>publisher<Space>=<Space>"<++>",<Enter><tab>}<Enter><++><Esc>6kA,<Esc>i
	autocmd FileType bib inoremap ;c @incollection{<Enter><tab>author<Space>=<Space>"<++>",<Enter><tab>title<Space>=<Space>"<++>",<Enter><tab>booktitle<Space>=<Space>"<++>",<Enter><tab>editor<Space>=<Space>"<++>",<Enter><tab>year<Space>=<Space>"<++>",<Enter><tab>publisher<Space>=<Space>"<++>",<Enter><tab>}<Enter><++><Esc>8kA,<Esc>i

"MARKDOWN
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap ;n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ;b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ;e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ;i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;l --------<Enter>
	autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>--pdf-engine=xelatex<space>-o<space><C-r>%.pdf<Enter><Enter>
	autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
	autocmd Filetype rmd inoremap ;r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ;p ```{python}<CR>```<CR><CR><esc>2kO

""".xml
	"autocmd FileType xml inoremap ;e <item><Enter><title><++></title><Enter><pubDate><Esc>:put<Space>=strftime('%c')<Enter>A</pubDate><Enter><link><++></link><Enter><description><++></description><Enter></item>
	autocmd FileType xml inoremap ;e <item><Enter><title><++></title><Enter><guid<space>isPermaLink="false"><++></guid><Enter><pubDate><Esc>:put<Space>=strftime('%a, %d %b %Y %H:%M:%S %z')<Enter>kJA</pubDate><Enter><link><++></link><Enter><description><![CDATA[<++>]]></description><Enter></item><Esc>?<title><enter>cit
autocmd FileType xml inoremap ;a <a href="<++>"><++></a><++><Esc>F"ci"


" html abbreviations
iab bqc <blockquote><cite><CR><CR></cite></blockquote><CR><++><UP><UP><TAB>

" Computed abbreviations
" display current timestamp
iab <expr> TS strftime("%c")
" write last yanked text
iab <expr> PPP getreg('')
" insert content of preceding non-empty line
iab <expr> ^^ getline(search('\S\_.*\n\_.*\%#','b'))

	       "===========[ End of Abbreviations ]=============

" Get Help in full page instead of half-page
augroup HelpInTabs
	au!
	au BufEnter *.txt call HelpInNewTab()

	function! HelpInNewTab ()
		if &buftype == 'help'
			execute "normal \<C-W>T"
		endif
	endfunction
augroup END

"" Uncomment this if you want to save undo history
"" Make a persistent undofile for every vim file
"if has('persistent_undo')
"	set undofile
"endif
"
"" Overwrite the undo-files along different sessions
"set undodir=$HOME/.VIM_UNDO_FILES

" Completion stuff
" Show list of possible completions and fill the longest common prefix,
" and subsequent <TAB>s will cycle through the possibilities
set wildmode=list:longest,full

" Complete defined Perl subroutine
:set define=^\\s*sub
" example:
"sub defenestrate_exception {...} " is defined somewhere in your file
inoremap   <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap   <Space><Tab> <Esc>/<++><Enter>"_c4l
map        <Space><Tab> <Esc>/<++><Enter>"_c4l
"$result = de<C-X><C-D>
"and you get 
"$result = defenestrate_exception {...}
"because it searches for the string sub and suggests the completion based on
"what follows the keyword, in this case defenestrate_exception {...}

""" This is overwritten by Nerdtree
""" File browsing with netrw standard plugin
"":let g:loaded_netrw       = 1
"":let g:loaded_netrwPlugin = 1
""
"""=====[ Make netrw more instantly useful ]============
""let g:netrw_sort_by        = 'time'
""let g:netrw_sort_direction = 'reverse'
""let g:netrw_banner         = 0
""let g:netrw_liststyle      = 3
""let g:netrw_browse_split   = 3
""let g:netrw_fastbrowse     = 1
""let g:netrw_sort_by        = 'name'
""let g:netrw_sort_direction = 'normal'
""
""" highlight syntax in netrw
""augroup Autosyntax_actions
""    autocmd!
""    autocmd FileType netrw  syntax on
""augroup END
""" End overwritten by Nerdtree
"==============[ Mappings ]================

" Navigating with guides
inoremap ;gui <++>

" Escape insert mode via 'jk' or 'kj'
" Commented for now as it makes a visual lag when pressing a j or a k in
" insert mode. Possible work-around: https://github.com/zhou13/vim-easyescape/
"imap jk <ESC>
"imap kj <ESC>

" Map arrow keys to useful actions in normal mode
" Right arrow to step forward through matches
nmap <silent> <RIGHT>		:cnext<CR>
" Left arrow to step backward through matches
nmap <silent> <LEFT>		:cprev<CR>
" Double right arrow to step to next match in next file
nmap <silent> <RIGHT><RIGHT>	:cnfile<CR><C-G>
" Double left arrow to step to previous match in next file
nmap <silent> <LEFT><LEFT>	:cpfile<CR><C-G>

" Triple right arrow mapped to go to the next place of edit
nnoremap <silent> <RIGHT><RIGHT><RIGHT> g,
" Triple right arrow mapped to go to the next place of edit
nnoremap <silent> <LEFT><LEFT><LEFT> g;

" Tabular mappings
if exists(":Tabularize")
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Enable insert mode alignment when pressing <Bar>
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


" EasyAlign mappings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Easy dragging of blocks in visual modes using Schlepp's plugin
vmap <UP>    <Plug>SchleppUp
vmap <DOWN>  <Plug>SchleppDown
vmap <LEFT>  <Plug>SchleppLeft
vmap <RIGHT> <Plug>SchleppRight
" Duplicate on the left
vmap D <Plug>SchleppDupLeft
" When moving text left, Schlepp by default does not allow you to move left 
" if any text is all the way left. To allow the 'Squishing' of text 
" add these lines to your vimrc
let g:Schlepp#allowSquishingLines = 1
let g:Schlepp#allowSquishingBlock = 1
" Disable trailing whitespace removal on block move
let g:Schlepp#trimWS = 0
" Reindent code as it moves
vmap i <Plug>SchleppToggleReindent

" Command line mappings
":cnoremap gitc git<Space>c<Space>-m<Space>"
:cmap gitc git c -m "
" REMOVE WHEN DONE UPDATING vimrc:
" this command updates the vimrc by typing :sv<CR>
":cnoremap sv source ~/.vimrc
"nnoremap ,, :w<CR>:source ~/.vimrc<CR>
"au BufNewFile,BufRead ~/.vimrc nnoremap ,, :w<CR>:source ~/.vimrc<CR>

" show the commands for now
set showcmd

" Test: Commenting in local file
" This is when I change the file in the local dotfile directory
" ~/jon-dotfiles. Let's see whether it updates .vimrc once pushed...
" Result: git status didn't update !
" Adding some new stuff. Let's see whether it gets detected by git