if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
if has('vim_starting') && dein#check_install()
  call dein#install()
endif


" プラグイン以外のその他設定
colorscheme molokai     "カラースキーム
syntax on               
set number              "行番号を表示
set autoindent          "改行時に自動でインデントする
set tabstop=2           "タブを何文字の空白に変換するか
set shiftwidth=2        "自動インデント時に入力する空白の数
set expandtab           "タブ入力を空白に変換
set splitright          "画面を縦分割する際に右に開く
set clipboard=unnamed   "yank した文字列をクリップボードにコピー
set hls                 "検索した文字をハイライトする
set softtabstop=2       "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅の指定
set autoindent          "改行時に前のインデントを継続する
set scrolloff=5         "スクロール送りを開始する前後の行数を指定
set hlsearch            "検索結果のハイライトと取り消し
noremap <ESC><ESC> :nohlsearch<CR>  
set smartindent         "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cursorline          "カーソル行の背景色変更
nmap  n   nzz           "検索語が画面の真ん中に来るように
nmap  N   Nzz
nmap  *   *zz
nmap  #   #zz
nmap  g*  g*zz
nmap  g#  g#zz

inoremap <silent> jj <ESC>  "インサートモードからjjで抜けれる
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/         "全角スペースの可視化




