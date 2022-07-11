alias t='tree -L 1 --gitignore -a'
alias tt='tree -L 2 --gitignore -a'
alias c='nvim $HOME/.config/nvim/init.lua'
alias u='updatedb -l 0 -e $PWD/node_modules -U . -o plocate.db'
alias f='locate -d plocate.db'
alias v='nvim'


git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
