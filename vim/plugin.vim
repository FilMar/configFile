" lista di plugin installati
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "" è importante scaricare yarn e nmp per installare i plugin aggiuntivi di coc
Plug 'yaegassy/coc-nginx', {'do': 'yarn install --frozen-lockfile'}
Plug 'scrooloose/nerdTree'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'udalov/javap-vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'kyoz/purify', {'rtp': 'vim'}
Plug 'chr4/nginx.vim'
Plug 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'
""Plug 'liuchengxu/vim-which-key'
    "source 
"" ################################################################FINE CONFIGURAZIONE PLUGINS##############################################
call plug#end()


