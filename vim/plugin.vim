" lista di plugin installati
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "" è importante scaricare yarn e nmp per installare i plugin aggiuntivi di coc
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'udalov/javap-vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-rooter'
Plug 'kyoz/purify', {'rtp': 'vim'}

call plug#end()


