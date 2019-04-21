#!/bin/bash

cp i3/config ~/.config/i3/config
for fn in libexec.i3blocks/*;
do
    sudo cp $fn /usr/libexec/i3blocks/
    sudo chmod a+x /usr/libexec/i3blocks/$(basename $fn)
done
cp xresources/Xresources ~/.Xresources
xrdb -load ~/.Xresources
rsync -axAX -a vim/colors/ ~/.vim/colors/
