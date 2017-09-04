" Aron
"
scriptencoding utf-8
set encoding=utf-8
" invisible characters
" set list
" set listchars=eol:~,tab:>·,trail:~,extends:>,precedes:<,space:·
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" https://github.com/Shougo/unite.vim
NeoBundle 'Shougo/unite.vim'

NeoBundle 'kannokanno/previm'
NeoBundle 'suan/vim-instant-markdown' 
NeoBundle 'iamcco/markdown-preview.vim'
"NeoBundle 'valloric/youcompleteme'
NeoBundle 'jacoborus/tender'
NeoBundle 'altercation/vim-colors-solarized' 
" https://github.com/tpope/vim-surround
NeoBundle 'surround.vim'

NeoBundle 'rickhowe/diffchar.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
call neobundle#end()

" Required:
filetype indent plugin on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
syntax on

" 继承前面行的indent
set autoindent

" 根据当前行的行末字符，聪明地判断下面行的indent
set smartindent

" 显示行号
set number

" expandtab 输入tab时自动变成tabstop指定的space，我还是喜欢tab
set noexpandtab
set tabstop=4
"set shiftwidth=2
"set background=dark
"set clipboard=unnamed

" .vimrc
let g:previm_open_cmd = 'open'

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
 endif
"
" For Neovim 0.1.3 and 0.1.4
 let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"
" Theme
syntax on
" colorscheme badwlf 
" set lighline theme inside lightline config
" let g:lightline = { 'colorscheme': 'tender' }
"
" set airline theme
" let g:airline_theme = 'tender'

" 从打开的文件的前n行，设置vim
set modeline
set modelines=5

" vimdiffの色設定
" hi DiffAdd    ctermfg=black ctermbg=2
" hi DiffChange ctermfg=black ctermbg=3
" hi DiffDelete ctermfg=black ctermbg=6
" hi DiffText   ctermfg=black ctermbg=7
"
"ステータスバー
set laststatus=2  

" [ASCII=\%06.8b]\ 
" 显示文件名，
" set statusline=%F%m%r%h%w\
"[ 1, Ctrl+G ] 也能显示文件名,详细说明查阅 
" :help CTRL-G
set statusline=[FORMAT=%{&ff}]\ [TYPE=%Y]\ [HEX=\%04.6B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" colorscheme koehler 
highlight Normal ctermbg=none
" set background=dark
let g:indent_guides_auto_colors = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
" 激活IndentGuide,但是不能在这里写，只能在vim的cmd里写才能用
" IndentGuidesEnable
au  VimEnter * :IndentGuidesEnable
" ===================================================
" カラースキーマ適用後も背景を透明にする為のscript(残念ながら全然効かない)
"
" if !has('gui_running')
"     augroup seiya
" 	    autocmd!
" 		autocmd VimEnter,ColorScheme * highlight Normal ctermbg=none
" 		autocmd VimEnter,ColorScheme * highlight LineNr ctermbg=none
" 		autocmd VimEnter,ColorScheme * highlight SignColumn ctermbg=none
" 		autocmd VimEnter,ColorScheme * highlight VertSplit ctermbg=none
" 		autocmd VimEnter,ColorScheme * highlight NonText ctermbg=none
" 	augroup END
" endif
"
" カラースキーマ適用後も背景を透明にする為のscript
" ===================================================

""""""""""""""""""""""""""""""
" 查找、替换
""""""""""""""""""""""""""""""
" ビジュアルモード選択した部分を*で検索できる。これはかなり便利です。
vnoremap * "zy:let @/ = @z<CR>n

" 選択部分を置換できる
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" 検索をハイライト表示,
" nohlsearch, noh
set hlsearch

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""
"
" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on
set background=dark
colorscheme solarized
