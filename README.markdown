# My Emacs Configuration

From Phil Hagelberg's emacs-starter-kit.

## Installation

1. Install Emacs (at least version 22)
2. Move the directory containing this file to ~/.emacs.d
3. Launch Emacs!

If you are missing some autoloads after an update (should manifest
itself as "void function: foobar" errors) try M-x regen-autoloads.

If you want to keep your regular ~/.emacs.d in place and just launch a
single instance using the starter kit, try the following invocation:

  $ emacs -q -l ~/emacs/init.el

## ELPA

Libraries from ELPA (http://tromey.com/elpa) are preferred when
available since dependencies are handled automatically, and the burden
to update them is removed from the user.

See starter-kit-elpa.el for a list of libraries that are pending
submission to ELPA.
