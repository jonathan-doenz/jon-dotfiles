
" ================== If use Pathogen, uncomment from here ==================

" execute pathogen#infect()
" syntax on
" filetype plugin indent on

" " Add my personal plugins
" " execute pathogen#infect('bundle/yankmatches', '~/Dropbox/vim/plugin/yankmatches.vim')
" execute pathogen#infect('bundle/yankmatches', '~/Dropbox/vim/plugin/yankmatches')
" " execute pathogen#infect('bundle/smartcom', '~/Dropbox/vim/plugin/smartcom.vim')
" execute pathogen#infect('bundle/smartcom', '~/Dropbox/vim/plugin/smartcom')
" " execute pathogen#infect('bundle/persistentvisuals', '~/Dropbox/vim/plugin/persistentvisuals.vim')
" execute pathogen#infect('bundle/persistentvisuals', '~/Dropbox/vim/plugin/persistentvisuals')

" ================== If use Pathogen, uncomment to here ==================

" ================= If use VUNDLE, uncomment from here ===================

set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/bundle')

" Some stuff inspired from:
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" Auto complete plugin. Now makes vim from brew to crash!
Plugin 'Valloric/YouCompleteMe'

" Checking syntax of document on each save
" Plugin 'vim-syntastic/syntastic'
" ALE is more lightweight than syntastic
Plugin 'w0rp/ale'

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'mhartington/oceanic-next'
" Plugin 'romainl/flattened'

" Customize status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'

" Directories tree plugin
Plugin 'scrooloose/nerdtree'

" Git integration
Plugin 'tpope/vim-fugitive'

" PEP8 checking 
Plugin 'nvie/vim-flake8'

" Super searching with Ctrl-P command, search files, tags, ...
Plugin 'kien/ctrlp.vim'

" Powerline displaying current file, git branch, virtualenv
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" " Command-T plugin to open files and buffers, jump to tags, run commands...
" Plugin 'wincent/command-t'

" Enable . to repeat a plugin operation
Plugin 'tpope/vim-repeat'

" Use surrounding operations (hopefully doesn't conflict vimtex)
Plugin 'tpope/vim-surround'

" Use surrounding operations (hopefully doesn't conflict vimtex)
Plugin 'tpope/vim-commentary'

" Use many mappings starting with [ and ] symbols
Plugin 'tpope/vim-unimpaired'

" Automatic and smart addition of closing braces, brackets, etc...
Plugin 'Raimondi/delimitMate'

" Fast motion in document
" Plugin 'easymotion/vim-easymotion'
" vim-sneak remaps 's' in normal mode
Plugin 'justinmk/vim-sneak'

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

" Manage todo lists with vimwiki
Plugin 'vimwiki/vimwiki'

" Display run code in new pane
Plugin 'tpope/vim-dispatch'

" Save and restore vim-sessions better than :mksession
Plugin 'tpope/vim-obsession'

" Run C code in quickfix window
" Plugin 'skywind3000/asyncrun.vim'

" Execute files or visual selection with chosen mapping
Plugin 'fboender/bexec'

" " Ease to run python code interactively
" Plugin 'ivanov/vim-ipython'

" Ease to run python code interactively, more minimal method
Plugin 'benmills/vimux'
Plugin 'julienr/vim-cellmode'

" Preview markdown file in safari
Plugin 'JamshedVesuna/vim-markdown-preview'

" Homogenize shortcuts between vim and tmux splits
Plugin 'christoomey/vim-tmux-navigator'

" Handle tags to have an IDE-like `go to` functionality
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" Allow emojis insertion
Plugin 'junegunn/vim-emoji'

" Allow to run scripts from vim to other tmux panes

" Plugin 'sjl/tslime.vim'
" Plugin 'benmills/vimux'

"" git repos on your local machine (i.e. when working on your own plugin)
"" To do: make a symlink in ~/.vim/bundle/my-vim-plugins to the plugins in my
"" git repo located at ~/Dropbox/vim/plugin
"" Plugin 'file:///Users/jonathandoenz/Dropbox/vim/plugin/plugin_name_here'
"Plugin 'file:///Users/jonathandoenz/Dropbox/vim/plugin'
" set runtimepath^=~/.vim/bundle/my-vim-plugins/smartcom
" set runtimepath^=~/.vim/bundle/my-vim-plugins/yankmatches

"" From Damian Conway's vimrc
""====[ Ensure autodoc'd plugins are supported ]===========
"" Plugin '_autodoc.vim' " this file is not present

""=====[ Enable Nmap command for documented mappings ]================
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} " example how to include personal plugins
"Plugin 'yankmatches', {'rtp': 'yankmatches/'}
"" Plugin 'file:///Users/jonathandoenz/Dropbox/vim/plugin/yankmatches.vim'
"" Plugin 'yankmatches', {'rtp': 'file:///Users/jonathandoenz/Dropbox/vim/plugin'}
"" Plugin 'yankmatches.vim'

"" =====[ Smart completion via <TAB> and <S-TAB> ]=============
"Plugin 'file:///Users/jonathandoenz/Dropbox/vim/plugin/smartcom.vim'

"" =====[ Keep visual selection selected after a move ]=======
"Plugin 'file:///Users/jonathandoenz/Dropbox/vim/plugin/persistentvisuals.vim'

" END plugins set up

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ================= If use VUNDLE, uncomment until here ===================



" Allow to specify line numbers where split occurs using :sp (split command)
set splitbelow
set splitright

" " Allow mouse scrolling in iTerm2
" " set mouse=nicr
" set mouse=a
" if has("mouse_sgr")
"     set ttymouse=sgr
" else
"     set ttymouse=xterm2
" end

" Folding general files
set foldmethod=indent
set foldlevel=99

" Fugitive settings
" Add current branch and filename to status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Folding .tex files
let g:vimtex_fold_enabled=1
" if you want to select the expressions on which to fold a tex file, :h g:vimtex_fold_types 

" See the docstrings for folded code
let g:SimpylFold_docstring_preview=1


" UltiSnips settings

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Work around enabling use of custom local snippets
" https://github.com/SirVer/ultisnips/issues/711
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Customize snippets' variables for docstrings
let g:snips_author="Jonathan Doenz"
let g:snips_email="jonathan.doenz@gmail.com"
let g:snips_github="jonathan-doenz"

" Python indentation stuff
au BufNewFile,BufRead *.py
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set textwidth=79 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix

" Standardization of indentation of other file types 
au BufNewFile,BufRead *.js, *.html, *.css
			\ set tabstop=2 |
			\ set softtabstop=2 |
			\ set shiftwidth=2

" Flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Specify UTF8 encoding (important for Python 3)
set encoding=utf-8

" " Customization of YouCompleteMe (YCM)
" " need this to be able to compile
" let g:ycm_path_to_python_interpreter = 'python3'

" " closes the preview window
" let g:ycm_autoclose_preview_window_after_completion=1

" " automatically shows suggestions
" let g:ycm_auto_trigger = 1
" " after a minimum of n characters
" let g:ycm_min_num_of_chars_for_completion = 3

" manually close preview window
" let g:ycm_key_list_stop_completion = ['<C-y>']

" Invoke completion options from  YCM
let g:ycm_key_invoke_completion = '<C-.>'

" This snippet allows you to use the command :Pyhelp <string> to preview Python
" documentation in the preview window. It also opens the documentation by
" pressing K when cursor is on the keyword
" if has("python3")
"   " let python3 figure out the path to pydoc
"   python3 << EOF
" import sys
" import vim
" vim.command("let s:pydoc_path=\'" + sys.prefix + "/lib/python3.6/pydoc.py\'")
" EOF
" else
"   " manually set the path to pydoc
"   let s:pydoc_path = "/path/to/python/lib/pydoc.py"
" endif

" nnoremap <buffer> K :<C-u>let save_isk = &iskeyword \|
"     \ set iskeyword+=. \|
"     \ execute "Pyhelp " . expand("<cword>") \|
"     \ let &iskeyword = save_isk<CR>
" command! -nargs=1 -bar Pyhelp :call ShowPydoc(<f-args>)
" function! ShowPydoc(what)
"   " compose a tempfile path using the argument to the function
"   let path = $TEMP . '/' . a:what . '.pydoc'
"   let epath = shellescape(path)
"   let epydoc_path = shellescape(s:pydoc_path)
"   let ewhat = shellescape(a:what)
"   " run pydoc on the argument, and redirect the output to the tempfile
"   call system(epydoc_path . " " . ewhat . (stridx(&shellredir, '%s') == -1 ? (&shellredir.epath) : (substitute(&shellredir, '\V\C%s', '\=epath', ''))))
"   " open the tempfile in the preview window
"   execute "pedit" fnameescape(path)
" endfunction

" " Python with virtualenv support
" py3 << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

" vim markdown preview settings
" if using `grip`:
" Note that this makes a request to GitHub's API (causing latencies) and may
" require authentication. This option also requires a network connection. See
" at https://github.com/JamshedVesuna/vim-markdown-preview
let vim_markdown_preview_github=1
" render image only when pressing the corresponding mapping, i.e. <C-M>
" choose =2, or =3, to respectively render images on write, and never
let vim_markdown_preview_toggle=1

" vim-cellmode plugin settings
let g:cellmode_default_mappings='0'
let g:cellmode_use_tmux=1
" Makes things look pretty in python files
let python_highlight_all=1
syntax on

" " start oceanicnext uncomment
" " OceanicNext color scheme start
" " Color scheme
"  if (has("termguicolors"))
"   set termguicolors
"  endif

" " Enable italic and bold face (keep it commented, it looks super bad with it)
" " let g:oceanic_next_terminal_bold = 1
" " let g:oceanic_next_terminal_italic = 1

" colorscheme OceanicNext
" " end oceanicnext uncomment

" " Status line matching the general color scheme
" let g:airline_theme='oceanicnext'
" " OceanicNext color scheme end
let g:tmuxline_preset='tmux'
let g:airline#extensions#tmuxline#enabled=0
let g:airline#extensions#tabline#enabled=1
let g:tmuxline_theme='zenburn'

" " flattened_dark start uncomment
" syntax enable
" set background=dark
" let g:solarized_termcolors=256
" colorscheme flattened_dark
" " flattened_dark end uncomment

" " start solarized scheme uncomment
" " Color schemes based on vim mode
" syntax enable
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized
" " end solarized scheme uncomment

" Old time version start uncomment
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif
" Old time version start uncomment

" " from mhartington:
" set background=dark

" " Theme, Colorscheme, & Font
" if has("gui_running")
"   " colorscheme Tomorrow-Night
"   " set guifont=Monaco:h14
"   " set linespace=2
"   " set noantialias
" else
"   try
"     colorscheme OceanicNext
"   catch
"   endtry
" endif

" function! ReverseBackground()
"   if &background=="light"
"     set background=dark
"     colorscheme OceanicNext
"   else
"     set background=light
"     colorscheme solarized
"     execute 'AirlineTheme solarized'
"   endif
" endfunction
" command! Invbg call ReverseBackground()

" " Set extra options when running in GUI mode
" if has("gui_running")
"   set guioptions-=T
"   set guioptions-=e
"   set t_Co=256
"   set guitablabel=%M\ %t
" endif
" " end from mhartington

" Tabline settings (removed for now because 
" it doesn't display all tabs if there are many)
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_tabs = 0
" let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
" let g:airline#extensions#tabline#show_tab_nr = 1
" or use tmux tabline:
" let g:airline#extensions#tmuxline#enabled = 0

" Hyde .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" " Turn line number on
" set nu

" Set absolute line number while in insert mode, and relative in normal mode
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" System clipboard
set clipboard=unnamed

" Enable vimtex plugin in .tex files
au BufNewFile,BufRead *.tex let g:vimtex_enabled=1
" Use Skim as pdf viewer for vimtex
let g:vimtex_view_method='skim'
" Prevent `latexmk` (or other build tools) from starting Skim and instead let vimtex start Skim through the callback feature (see :help vimtex_view_automatic)
let g:vimtex_view_automatic=1
" Enable forward searching in skim (it is buggy as of 24.05.2018)
"map ,r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-r>=line('.')<CR> %<.pdf<CR>

" Damian Conway's inspired stuff from here

" Search for matches as you type
set incsearch

" Highlight all the search matches
set hlsearch
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
set cursorline

" Fix deletion in insert and replace modes (important not to have space around
" equal sign)
set backspace=indent,eol,start

" Highlight the characters on the 81st line to suggest to go back to line
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)


" Get Help in full page instead of half-page
augroup HelpInTabs
	au!
	au BufEnter *.txt call HelpInNewTab()

	function! HelpInNewTab ()
		if &buftype == 'help'
			"Convert the help window to a tab...
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

" Schlepp plugin settings
" When moving text left, Schlepp by default does not allow you to move left 
" if any text is all the way left. To allow the 'Squishing' of text 
" add these lines to your vimrc
let g:Schlepp#allowSquishingLines = 1
let g:Schlepp#allowSquishingBlock = 1
" Disable trailing whitespace removal on block move
let g:Schlepp#trimWS = 0

" Tabularize plugin settings
" Press | (pipe) and a markdown table will automatically get aligned and
" adjust itself dynamically as new entries are entered in the table
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

" Dispatch plugin settings
autocmd FileType python let b:dispatch = 'python3 %'
autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType c let b:dispatch = 'gcc %'

" sneak plugin settings
let g:sneak#label = 1

" Show the keys entered in normal mode
set showcmd

" Return to the same line you left off at
augroup line_return
	au!
	au BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\	execute 'normal! g`"zvzz' |
				\ endif
augroup END

" vim-emoji plugin settings
" complete emojis
set completefunc=emoji#complete

"==============[ Mappings and Abbreviations ]================
" Quick save in any documents
inoremap ,, <ESC>:w<CR>a
nnoremap ,, :w<CR>

" Use <BS> instead of typing :nohlsearch to remove highlighting 
nmap <silent> <BS>  :nohlsearch<CR>

" Split navigations: Ctrl-j to move to the split below, Ctrl-k to split above,
" Ctrl-l to split right, Ctrl-h to split left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Navigate between tabs with tt and TT
nnoremap tt gt
nnoremap TT gT

" Enable folding/unfolding with the spacebar
nnoremap <space> <C-D>
nnoremap <S-space> <C-U>
" nnoremap <CR> za
" nnoremap <space> za

" Quick indent whole document
inoremap ;ia <ESC>m`gg=G``a
nnoremap ;ia m`gg=G``

" Copy whole document
nnoremap ;ca m`ggyG``

" Refresh file
nnoremap ;re :edit<Space><C-R>%<CR>

" Display file path
nnoremap ;pat :echo expand('%:p')<CR>

" Copy file path
nnoremap ;cfp :let @*=expand("%:p")<CR>

" Add empty line above
nnoremap oo m`o<ESC>d$``

" Add empty line below
nnoremap OO m`O<ESC>d$``

" Open .vimrc in new tab
nnoremap vv :tabedit<Space>~/.vimrc<CR> 

" Open snippets file from current filetype
nnoremap ;sni :tabe ~/.vim/bundle/vim-snippets/snippets/%:e.snippets<CR>
" Special case for json filetype where snippets are located in different folder
autocmd FileType json nnoremap ;sni :tabe ~/.vim/bundle/vim-snippets/UltiSnips/%:e.snippets<CR>

" Make current file executable
nnoremap ;+x :!chmod +x %<CR>

" Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" " Run any file with bexec plugin
" nmap <silent> <unique> <F5> :Bexec()<CR>
" vmap <silent> <unique> <F5> :BexecVisual()<CR>

" Go to definition (works with python and maybe C languages)
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Run python file
autocmd FileType python nnoremap <buffer> <F6> :exec '!clear; python' shellescape(@%, 1)<cr>
" " None of the following work:
" autocmd FileType python nnoremap <buffer> <F6> :exec '!bash python test.py'<cr>
" autocmd FileType python nnoremap <buffer> <F6> :exec '!clear; tmux python' shellescape(@%, 1)<cr>
" autocmd FileType python nnoremap <buffer> <F6> :call VimuxRunCommand("ls")
" autocmd FileType python nnoremap <buffer> <F6> :call VimuxRunCommand("clear; echo " bufname("%"))<cr>
" autocmd FileType python nnoremap <buffer> <F6> :call VimuxRunCommand("clear; python " . bufname("%"))<cr>
" autocmd FileType python nnoremap <buffer> <F6> :call VimuxRunCommand("clear; python " . bufname("%"))<cr>
" autocmd FileType python nnoremap <buffer> <F6> :call VimuxRunCommandInDir("clear; python " shellescape(@%, 1))<cr>
" autocmd FileType python nnoremap <buffer> <F6> :w<CR>:!/usr/bin/env node % <CR>
autocmd FileType python inoremap <buffer> <F6> <ESC>:exec '!clear; python' shellescape(@%, 1)<cr>

" Run visual selection with python
xnoremap <F6> <esc>:'<,'>:!python<CR>

" vim-cellmode mappings
noremap <silent> <C-m>k :call RunTmuxPythonAllCellsAbove()<CR>
noremap <silent> <C-m>j :call RunTmuxPythonCell(0)<CR>
noremap <silent> <C-m><C-m> :call RunTmuxPythonCell(1)<CR>
noremap <silent> <C-m>r m`Go##<CR>##<ESC>:call RunTmuxPythonAllCellsAbove()<CR><CR>dk``
vnoremap <silent> <C-m> :call RunTmuxPythonChunk()<CR>

" Run python script and show result in horizontal split
" Run :Dispatch should work

" Run C script
autocmd FileType c nnoremap <F5> :make %<<CR>:!clear; ./%<<CR>
autocmd FileType c nnoremap <F6> :Dispatch<CR>

" Sources .vimrc from within a file
nnoremap ;sv :w<CR>:source ~/.vimrc<CR>

" Allows for space-g (or leader key-g) to goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Execute the present file in the terminal
nnoremap ;ex :w<CR>:!./%<CR>

" List all buffers and wait for entering the buffer number to jump to it
nnoremap gb :ls<CR>:b

" Navigating with placeholders
inoremap ;gui <++>

" Navigation to <++> placeholders with <space><Tab>
" inoremap   <Space><Tab> <Esc>/<++><Enter>"_c4l
" vnoremap   <Space><Tab> <Esc>/<++><Enter>"_c4l
" map        <Space><Tab> <Esc>/<++><Enter>"_c4l

" Arrow keys in normal mode
" Right arrow mapped to go to the next place of edit
nnoremap <silent> <RIGHT> g,
" Left arrow mapped to go to the previous place of edit
nnoremap <silent> <LEFT> g;
" " Double right arrow to step forward through matches
" nmap <silent> <RIGHT><RIGHT>		:cnext<CR>
" " Double left arrow to step backward through matches
" nmap <silent> <LEFT><LEFT>		:cprev<CR>
" " Triple right arrow to step to next match in next file
" nmap <silent> <RIGHT><RIGHT><RIGHT>	:cnfile<CR><C-G>
" " Triple left arrow to step to previous match in next file
" nmap <silent> <LEFT><LEFT><LEFT>	:cpfile<CR><C-G>

" Scrolling with <C-arrow>
nnoremap <C-DOWN> <C-E>
nnoremap <C-UP> <C-Y>

" Indentation in visual mode keeps the visual selection
xnoremap < <gv
xnoremap > >gv

" TeX mappings
autocmd FileType tex nmap ;; :w<CR><plug>(vimtex-compile)<plug>(vimtex-view)
autocmd FileType tex imap ;; <ESC>:w<CR><plug>(vimtex-compile)<plug>(vimtex-view)a
" autocmd FileType tex inoremap $ $  $ <++><ESC>F$hi
autocmd FileType tex inoremap ;fr
			\begin{frame}{}<CR><CR><++><CR><CR>\end{frame}<CR><CR><++><Esc>6kf}la
autocmd FileType tex inoremap ;fi \begin{fitch}<CR><CR>\end{fitch}<CR><CR><++><Esc>3kA
autocmd FileType tex inoremap ;exe \begin{exe}<CR>\ex<Space><CR>\end{exe}<CR><CR><++><Esc>3kA
autocmd FileType tex inoremap ;em \emph{}<++><Esc>T{i
autocmd FileType tex inoremap ;bf \textbf{}<++><Esc>T{i
autocmd FileType tex vnoremap ; <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<CR>a
autocmd FileType tex inoremap ;it \textit{}<++><Esc>T{i
autocmd FileType tex inoremap ;ci \cite{}<++><Esc>T{i
autocmd FileType tex inoremap ;tci \textcite{}<++><Esc>T{i
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

" Convert special characters into compatible form
" Accented characters
autocmd FileType tex inoremap á \'{a}
autocmd FileType tex inoremap à \`{a}
autocmd FileType tex inoremap â \^{a}
autocmd FileType tex inoremap ä \"{a}
autocmd FileType tex inoremap ã \~{a}
autocmd FileType tex inoremap é \'{e}
autocmd FileType tex inoremap è \`{e}
autocmd FileType tex inoremap ê \^{e}
autocmd FileType tex inoremap ë \"{e}
autocmd FileType tex inoremap í \'{i}
autocmd FileType tex inoremap ì \`{i}
autocmd FileType tex inoremap î \^{\i}
autocmd FileType tex inoremap ï \"{\i}
autocmd FileType tex inoremap ó \'{o}
autocmd FileType tex inoremap ò \`{o}
autocmd FileType tex inoremap ô \^{o}
autocmd FileType tex inoremap ö \"{o}
autocmd FileType tex inoremap õ \~{o}
autocmd FileType tex inoremap ú \'{u}
autocmd FileType tex inoremap ù \`{u}
autocmd FileType tex inoremap û \^{u}
autocmd FileType tex inoremap ü \"{u}
autocmd FileType tex inoremap ñ \~{n}
" Other special characters
autocmd FileType tex inoremap ç \c{c}

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


" " Quick shortcut to debug plugins
" nnoremap <space><space> :w<CR>:source<space>~/.vimrc<CR>:PluginInstall<CR> 

" " Quick shortcuts to ease testing
" nnoremap <space><space> :w<CR>:source<space>~/.vimrc<CR>

" Escape insert mode via 'jk' or 'kj'
" Commented for now as it makes a visual lag when pressing a j or a k in
" insert mode. Possible work-around: https://github.com/zhou13/vim-easyescape/
"imap jk <ESC>
"imap kj <ESC>

" Tabular mappings
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Enable insert mode alignment when pressing <Bar>
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" EasyAlign mappings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Schlepp mappings
" Easy dragging of blocks in visual modes using Schlepp's plugin
vmap <UP>    <Plug>SchleppUp
vmap <DOWN>  <Plug>SchleppDown
vmap <LEFT>  <Plug>SchleppLeft
vmap <RIGHT> <Plug>SchleppRight

" Duplicate selection on the left
vmap Dk <Plug>SchleppDupUp
vmap Dj <Plug>SchleppDupDown
vmap Dh <Plug>SchleppDupLeft
vmap Dl <Plug>SchleppDupRight
" " The following mappings are suggested by Schlepp plugin creator raise an
" error because of the <unique> option
" vmap <unique> Dk <Plug>SchleppDupUp
" vmap <unique> Dj <Plug>SchleppDupDown
" vmap <unique> Dh <Plug>SchleppDupLeft
" vmap <unique> Dl <Plug>SchleppDupRight
" Reindent code as it moves
vmap i <Plug>SchleppToggleReindent

" Quick print variable selected in visual mode
autocmd FileType python nnoremap ;pr yiwoprint("<ESC>pA: " + <ESC>pA)<ESC>F:
autocmd FileType python vnoremap ;pr yoprint("<ESC>pA: " + <ESC>pA)<ESC>F:
autocmd FileType java vnoremap ;pr yoSystem.out.println("<ESC>pA: " + <ESC>pA);<ESC>F:
autocmd FileType c nnoremap ;pr yiwoprintf("%.2f: \n", <ESC>pA);<ESC>F.
autocmd FileType c vnoremap ;pr yoprintf("%.2f: \n", <ESC>pA);<ESC>F.

" Put a standard flag-comment to run a g command then to comment what is below
nnoremap ;tbc m`Onext line to be commented<ESC>:Commentary<ESC>``

" Comment below every line with the to be commented flag-comment
nnoremap ;com :g/\W next line to be commented/+1Commentary<CR>

" Increment all following lines matching a certain pattern (e.g. here: Exercice \d, \d a digit)
nnoremap ;incr :.,$g/^Exercice \d/exe "normal! \<C-A>"

" Dispatch plugin mappings
nnoremap <F5> :Dispatch<CR>

" " To compile and make pdf preview of markdown files, the following works but
" " take a  long time
" "" pandoc , markdown
" command! -nargs=* RunSilent
"       \ | execute ':silent !'.'<args>'
"       \ | execute ':redraw!'
" nmap ;pc :RunSilent pandoc -o /tmp/vim-pandoc-out.pdf %<CR>
" nmap ;pp :RunSilent open /tmp/vim-pandoc-out.pdf<CR>

" vim markdown preview mappings
let vim_markdown_preview_hotkey='<C-m>'

" easymotion plugin mappings
" nmap s <Plug>(easymotion-overwin-f2)
" Turn on case insensitive feature
" let g:EasyMotion_smartcase = 1

" Reverse order of class-attributes: class.attr -> attr.class
" nnoremap ;rev vf.dea.<ESC>px

" " Refresh other tmux pane with the code run from present pane (doesn't work
" " for now
" nnoremap <Leader>W :w<Bar>execute 'silent !tmux send-keys -t 1 C-r'<Bar>redraw!<CR>

" html abbreviations
iab bqc <blockquote><cite><CR><CR></cite></blockquote><CR><++><UP><UP><TAB>

" Computed abbreviations
" display current timestamp
iab <expr> TS strftime("%c")
" write last yanked text
iab <expr> PPP getreg('')
" insert content of preceding non-empty line
iab <expr> ^^ getline(search('\S\_.*\n\_.*\%#','b'))

" vim-emoji mappings
nnoremap ;cemo :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>

" make visual selection a numbered list (Importnat: only works for single
" paragraphs, and only if the end of file is not right after last element in
" the list) -> much room for improvement on this one!
vnoremap ;tnl :%!nl<CR>h<C-V>}kdl<C-V>}kwhc)<SPACE><ESC>

" Temporary mapping to remove comma at end of my DDL tables
" nnoremap ;db }kkV:s/.*\zs,//<CR>jjj0
nnoremap ;db :g /^)/-1 s/,$//<CR>

" Save the macro under register d
" nnoremap ;da |}kkV:s/\kb.(kb*\zs,//jjj0

" Terminal mode mappings
" tnoremap <C-ESC> <C-\><C-n>
" tnoremap <M-[> <Esc>
tnoremap <C-h> <c-\><c-n><c-w>h
tnoremap <C-j> <c-\><c-n><c-w>j
tnoremap <C-k> <c-\><c-n><c-w>k
tnoremap <C-l> <c-\><c-n><c-w>l

" Use <A-r> to paste register in terminal mode
tnoremap <expr> <C-S-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
" tnoremap <expr> <A-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" Tmux mappings

" " t-slice plugin mappings
" let g:tslime_always_current_session = 1
" let g:tslime_always_current_window = 1
" let g:tslime_normal_mapping = '<leader>t'
" let g:tslime_visual_mapping = '<leader>t'
" let g:tslime_vars_mapping = '<leader>T'
" vnoremap <F6> <Plug>SendSelectionToTmux
" nnoremap <F6> <Plug>NormalModeSendToTmux

" " Temporary workarounds for json snippets
" autocmd FileType json inoremap nd1 {<CR><Tab>"name": "",<CR>"description": "<++>",<CR>"website": "<++>",<CR>"keywords": ["<++>"]<CR>}<CR><CR><++><ESC>6kf,hi
" " name, description (list by default), website (list by default)
" autocmd FileType json inoremap ndw {<CR><Tab>"name": "",<CR>"description": ["<++>"],<CR>"website": ["<++>"]<CR>}<CR><CR><++><ESC>5kf,hi
"===========[ End of Mappings and Abbreviations ]=============
