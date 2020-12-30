"############## configurazione base:
" mouse
set mouse=a

" nascondiamo la mode corrente sotto la statusbar
set noshowmode

" scriviamo le modifiche prima di cambiare buffer
set autowrite

" impostiamo un'unica cartella per i file *~, evitando
" così di lasciarli dispersi per il filesystem
"set backupdir=~/.tmp

" il nostro terminale ha una palette di colori scuri, vero?
" bene, diciamo a vim di tenerne conto
set bg=dark

" usiamo gli spazi al posto del carattere di tabulazione
" da pythonista questo è fondamentale
set expandtab

" disabilitiamo il blinking del cursore in modalità normale
"set gcr=n:blinkon0

" salviamo le ultime 100 righe di storia dei comandi
set history=100

" evidenziamo i termini trovati dalla ricerca
set hlsearch

" forziamo la ricerca case-insensitive
set ignorecase

" forziamo la ricerca incrementale, cioè salta al primo termine
" trovato anche durante la digitazione
set incsearch

" mostriamo sempre la status bar
set laststatus=2

" disabilitando la modalità retro-compatibilità, si attivano
" tutte le features di Vim (in opposizione a Vi)
set nocompatible

" disabilitiamo il wrap delle linee, le linee troppo lunghe
" non verranno mandate a capo creando confusione.
set nowrap

" mostriamo sempre i numeri di riga
set number

" mostriamo le coordinate, per riga e colonna, della posizione
" corrente del cursore
set ruler

" se è abilitata l’auto-indentazione, questa viene sostituita
" con 4 spazi
set shiftwidth=4

" mostra sempre l’output dei comandi nella barra di stato.
" Ad es. mostra il numero di righe selezionate
set showcmd

" evidenzia le parentesi corrispondenti
set showmatch

" sostituisce il carattere di tabulazione con 4 spazi
set tabstop=4

" disabilitiamo il wrap delle parole
set textwidth=0

" settiamo un numero di possibili undo abbastanza alto...tutti sbagliano
set undolevels=1000

" carattere da utilizzare per iniziare ad espandere le macro.
" Ad es. io ho impostato che scrivendo "pdb” e premendo TAB
" il testo viene sostituito con "import pdb;pdb.set_trace()”
set wildchar=<Tab>

" questa impostazione è una delle più comode, infatti quando digitiamo un
" comando incompleto e premiamo TAB, mostra un comodo menu al
" posto di ciclare su tutte le opzioni
set wildmenu

" impostiamo un set di colori predefinito
colorscheme purify

" abilitiamo sempre la colorazione del testo in funzione della sintassi riconosciuta
syntax on

" disabilitiamo l’autoindentazione, fa più danno che altro
set noautoindent

" togliere la selezione automatica della dir di lavoro
" let g:rooter_manual_only = 1

" auto set dir to current dir
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = ''

" visible space with dot
set lcs+=space:·
set list
