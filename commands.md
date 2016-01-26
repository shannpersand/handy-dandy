buffer explorer
----
* `\` + `b` + `e` => buffer explorer
* `\` + `b` + `s` => buffer explorer in horizontal split
* `\` + `b` + `v`=> buffer explorer in vertical split

Ggrep
----
* :Ggrep 'stuff' **/*.filetype (wildcard within)
* :cope opens search results in a buffer
* :cn goes to next result
* :cp goes to previous result

nerd tree
----
* `\` + `n` + `t` => opens nerd tree
* `o` => opens file in previous window
* `s` => opens file in new split
* `shift` + `a` => resize nerd tree window
* `x` => closes current directory

vim commands
----
* `c` + `i` + `t` => change in tag
* `d` + `s` + `t` => delete surrounding tags
* `?``{` + `n or N` => when in class select
* `v` + `a` + `t` => visually select with tags
* `v` + `i` + `t` => visually select within tags
* `v` + `%` => class selection

***

* `o` => new line below with insert mode
* `shift + o` => new line above with insert mode
* `shift + a` => end of line in insert mode
* `shift + i `=> beginning of line in insert mode
* `shift + v` => visually highlights entire line
* `d` => delete and copy to clipboard
* `d` + `d` => delete line, also yanks at the same time to default register
* `shift + d` => delete to end of line (also `d` + `shift 4`)
* `p` => puts after cursor
* `shift + p` => puts before cursor
* `u` => undo
* `ctrl` + `r` => redo
* `w` => beginning of a word moving fowrards or word in combination including trailing space
* `e` => end of a word moving forwards, not including trailing space
* `b` => beginning of a word going backwards
* `g` + `g` => go to beginning of file
* `shift + g` => go to end of file or use # selector to choose line
* `y` => yank
* `y` + `y` | `shift + y` => yank line, yanks to "0 register automatically
* `f` => find forward # [x] character
* `shift + f` => find backwards # [x] character
* `t` => find til # [x] character, cursor ends up space before 
* `shift + t` => find backwards # [x]` character, cursor ends up before
* `shift + '` + `1 – 9` + `y/d` => save in register
* `shift + '` + `shift + [a – z]` + `y/d` => save in register and append to original
* `ctrl + f` => move page up big chunk
* `ctrl + b` => move page down big chunk
* `shift + [` => move down to next empty return
* `shift + ]` => move up to next empty return

***

*`.` => repeats last thing, not including movements
*`q` + `a [letter for accessing macro]` => starts recording macro to `a` or whatever letter
*`q` => stop recording
*`@` + `a` => excecute macro
*`@` + `@` => excecute again

***

* `ctrl + w` + w => move windows in vim
* `ctrl + w` + v => new vertical vim window split
* `ctrl + w` + s => new horizontal vim window split
* `ctrl + w` + `hjkl` => move around windows

***

* :reg => view registers
* :set syntax _ => set syntax for page
* :set paste => stop crazy pasting (turns indentation off)
* :set nopaste => turns indentation on again
* :noh => turn off highlight after /pattern search
* :s%/foo/bar => replace foo with bar
* :s%/foo/bar/? => replace foo with bar, but ask
* :so $MYVIMRC => refresh vimrc

bt vim
---
* `y``s``i``w` + `surrounding character` => wraps word in surrounding character of choice
* `d``s` + `surrounding character` => deletes wrapping character of choice
* `\` + `f` + `f` => fuzzy find
* `\` + `c` + `c` => comment out visually selected code

tmux
----
* `ctrl`+ a + s => new horizontal split
* `ctrl` + a + v => new vertical split
* `ctrl + a` + `h`,`j`,`k`,`l` => move around in tmux windows
* `ctrl + a` + `a` => toggle tabs
* `ctrl + a` + `c` => create new tab
* `ctrl + a` + `x` => close tab
* `ctrl + a` + # => move to that # tab
* `ctrl + a` + `,` => rename tab
* `ctrl + a` + `shift + [` => swap splits
* `ctrl + a` + `- or  +` => moves tmux split
* `ctrl` + `shift + a` + d => disconnect
* `ctrl` + `d` => disconnect and kill
* `tmux kill-session -t sessionname` => kill tmux session

other
---
* `ps ax` => list the processes running
* `kill -9 <process id>` => kill the process
* `df -h` => shows disk usage
* `du -hs <path/>` => shows human readable summary of how big directory is
