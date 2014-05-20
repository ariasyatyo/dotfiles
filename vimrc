syntax enable
set background=dark
colorscheme molokai
let g:solarized_termcolors=256


"--------------------------------------------------------------------------
" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on     " Required!

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

"GitHubリポジトリにあるプラグインを利用場合
 NeoBundle 'tpope/vim-fugitive'
"
""GitHub以外のGitリポジトリにあるプラグインを利用する場合
 NeoBundle 'git://git.wincent.com/command-t.git'

"Git以外のリポジトリにあるプラグインをを利用する場合
 NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
 NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
"

"######表示設定######
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
