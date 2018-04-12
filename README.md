# Vim-Jinja2-Syntax

This is the latest version of the Jinja2 syntax file for vim with the ability to detect either HTML or Jinja.

There are two reasons I made this repository:

* The version of this vim addon is out-of-date on vimscripts.

* I wanted to manage this syntax file with vim-addons-manager or whatever other vim plugins managers there are.

The current version is the [2015-03-20 version](https://github.com/pallets/jinja/commit/e0615edb7590591356384465fec8413ebbeece8c#diff-2bdaa63688638964ee9a159077a6ba6d) from the official jinja repository.
If you notice there is a newer version available please message me.

**If you have bugs or pull requests, please submit them straight to the [source](https://github.com/mitsuhiko/jinja2).** If the plugin is overzealous in detecting the Jinja syntax, send me the template it shouldn't have matched.

## Installation

### [vim-plug](https://github.com/junegunn/vim-plug) users:

```vim
Plug 'Xianguang-Zhou/Vim-Jinja2-Syntax', { 'branch': 'develop' }
```

## Configuration

Add the following codes to your ".vimrc" configuration file:

```vim
autocmd BufNewFile,BufRead *.jhtml,*.jhtm set filetype=jinja.html
autocmd BufNewFile,BufRead *.jinja2,*.j2,*.jinja set filetype=jinja
autocmd BufNewFile,BufRead *.html,*.htm,*.nunjucks,*.nunjs call g:jinja#SelectHTML(50)
```
