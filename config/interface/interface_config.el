;; Turn off mouse interface

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Activate color theme

(require 'color-theme)
(load "theme.el")
(color-theme-rclosner)

;; General interface changes

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq visible-bell t
      echo-keystrokes 0.1
      make-backup-files nil
      inhibit-startup-message t
      transient-mark-mode t
      color-theme-is-global t
      require-final-newline t
      mouse-yank-at-point t
      uniquify-buffer-name-style 'forward
      whitespace-style '(trailing lines space-before-tab
                                  indentation space-after-tab
                                  lines-tail)
      whitespace-line-column 80
      ediff-window-setup-function 'ediff-setup-windows-plain
      xterm-mouse-mode t
      save-place-file (concat emacs-dir "places"))

;; Turn on the clock
(display-time)

;; ido-mode is like magic pixie dust!

(when (> emacs-major-version 21)
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point t
        ido-max-prospects 10))

;; make emacs use the clipboard
(setq x-select-enable-clipboard t)

;; Terminal emulation

(autoload 'multi-term "multi-term" nil t)
(autoload 'multi-term-next "multi-term" nil t)

;; Ack

(autoload 'ack "ack-emacs" nil t)

(provide 'interface_config)
