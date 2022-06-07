# neovim
cheatsheets, config, etc.

## cursor movement
- [1]b - Back 1 word
- ctrl+b - move Back 1 full screen
- ctrl+d - move Down 1/2 a screen
- ctrl+f - move Forward 1 full screen
- ctrl+u - move Up 1/2 a screen
- gg - go to first line
- G - Go to last line
- [1]h - previous char
- [1]j - next line
- [1]k - previous line
- [1]l - next char
- [1]w - next Word

## inserting
- i - Insert mode

## editing
- u - Undo last change
- ctrl+r - redo

## exiting
- q - quit (fails if there are unsaved changes)
- q! - quit and discards unsaved changes
- qw - save and quit


## multiple files
- :e - edit file in new buffer
- :bn - go to next buffer
- :bp - go to previous buffer
- :bd - delete a buffer (close a file)
- :b# - go to buffer by index #
- :ls - list all buffers

## search and replace
- /pattern - search for pattern
- n - repeat word in same direction
- N - repeat word in opposite direction
- :%s/old/new/g - replace all old with new through file
- :%s/old\C/new/g - replace all old with new through file (case sensitive)

## visual mode
- y - yank (copy) marked text
- d - delete marked text
- [1]> - tab shift text to right
- [1]< - tab shift text to left
