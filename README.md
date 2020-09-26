vim-gitmoji
=========

[Gitmoji](https://gitmoji.carloscuesta.me/) guide in Vim.

Extracted from
[vim-emoji](https://github.com/junegunn/vim-emoji)

**The porpuse of this plugin is just list those emojis related to gitmoji and their description**

Installation
------------

Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'Kachyz/vim-gitmoji'
```

List of functions
-----------------

- `emoji#for(name[, default = '', pad = 1])`
  - Refer to [Emoji cheat sheet](http://www.emoji-cheat-sheet.com)
    - Except `camera_flash` emoji
- `emoji#list()`
- `emoji#complete(findstart, base)`

Examples
--------

### Emoji completion

```vim
set completefunc=emoji#complete
```
[![screenshot](https://i.postimg.cc/PJwZdpnq/image.png)](https://postimg.cc/vxGDzmBR)

### Replace `:emoji_name:` into Emojis

```vim
%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g
```

Notes
-----
```vim
<C-X><C-U>
```
When in `Insert` mode that combination will display your helper
