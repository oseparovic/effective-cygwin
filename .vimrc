set number
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set autoindent
set smartindent

"By default vi isn't configured to allow backspace to
"to delete characters.
set backspace=indent,eol,start

"This will allow you to use arrow keys to navigate in insert
"mode instead of printing out A B C D. Stops vim from behaving
"in a strongly vi -compatible way.
set nocompatible

"This command will show all tabs as ^l and all eol as $
"only whitespaces will by left unannotated so you can easily
"differentiate between tabs and spaces.
set list

"Syntax highlighting will not work without the full vim
"you can install it with the following command
"sudo apt-get install vim
syntax on
