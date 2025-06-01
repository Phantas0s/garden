+++
date = "2021-02-22"
draft = "true"
title = "Vim Journaling"
+++

* How do I do journaling in VIm
* I use some text pattern for tags to be findable with rg / fzf
    * Add an at @ at the beginning of each of these stuff

```
command! Jrnl call general#MakeJournalEntry()

function general#MakeJournalEntry()
    cd $JRNL
    let fname = $JRNL . '/' . strftime('%Y_%m_%d.md')
    execute 'edit ' . fname
    if filereadable(fname) ==? v:false
        execute 'normal I# ' . strftime('%A, the %d of %B %Y')
    endif
    execute "normal! Go\<cr>## " . strftime('%H:%M')
    execute "normal! o\<cr>"
    startinsert
endfunction
```
