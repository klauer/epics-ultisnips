## EPICS UltiSnips

### VSCode-converted Snippets

Most are auto-converted from these handy VSCode snippets:
https://github.com/NSenaud/vscode-epics

* database and template files (.db and .template)
* substitutions files (.substitutions, .sub, and .subs)
* startup files (.cmd and .iocsh)
* C source code
* streamdevice prototype files (.proto)
* SNL files (over charge of your .c extension)
* we-test (scenario and suite)

### Additional snippets

* caproto PVGroup-related snippets

## (neo)vim Installation

By way of [vim-plug](http://github.com/junegunn/vim-plug/):

```
call plug#begin('~/.vim/plugged')

" Highlighting + filetype setting
Plug 'NickeZ/epics.vim'

" Ultisnips + EPICS ultisnips
Plug 'SirVer/ultisnips'
Plug 'klauer/epics-ultisnips'

" Optionally grab useful snippets for other file types:
Plug 'honza/vim-snippets'

call plug#end()

" Configure your expand trigger:
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
```

Then

```
$ vim test.db
record.ai<c-s>
```

Expands to this, where you can use the forward/backward mappings
(``<c-j>/<c-k>`` above) to change the individual fields:

```
record(ai, "record_name") {
    field(DESC, "description")
    field(DTYP, "Soft Channel stream")
    field(SCAN, ".1 second 1 second I/O Intr Event Passive")
    field(INP,  "input link")
}
```

## See also

* Syntax highlighting: https://github.com/NickeZ/epics.vim
