command mode {
    # show line number
    :set numer

    # syntax highlighting
    :syntax on

    j # down
    k # up

    l # right
    h # left

    w # next word
    b # previous word

    0 # begining of the line
    ^ # begining of the line after white space
    $ # end of the line

    gg # first line
    G # last line

    <n>gg # goto line munber n

    q # quite
    q! # discard changes & quite
    w # save chnages
    wq # save chnages & quite

    u # undo
    ctrl + r # redo

    dd # cut line
    dw # cut word 
    dG # cut all file 

    /<word> # search for word
        n # go next 
        N # go previous

    %s/<search>/<replace>/gc # search and replace need confirmation
    %s/<search>/<replace>/g # search and force  replace


}

.vimrc # save vim configurations





