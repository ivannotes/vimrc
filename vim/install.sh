#!/bin/bash

# install command-t
#cd ~/.vim/bundle/command-t/ruby/command-t
#ruby extconf.rb
#make
#git submodule init
#git submodule update

sudo pip install jedi

# install rope
cd ~/.vim/libs/python/ropemode && sudo python setup.py install
cd ~/.vim/libs/python/ropevim && sudo python setup.py install

go get -v code.google.com/p/rog-go/exp/cmd/godef
go install -v code.google.com/p/rog-go/exp/cmd/godef
go get -u github.com/nsf/gocode
go get -u github.com/jstemmer/gotags

sh $GOPATH/src/github.com/nsf/gocode/vim/pathogen_update.sh
