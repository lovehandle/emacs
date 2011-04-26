;; Add an alias and load the current directory

(setq emacs-dir (file-name-directory
                 (or (buffer-file-name) load-file-name)))

(setq config-dir (concat emacs-dir "/config"))

;; Load emacs-dir and set file configurations

(add-to-list 'load-path emacs-dir)

(setq autoload-file (concat emacs-dir "autoload.el"))
(setq package-user-dir (concat emacs-dir "elpa"))

;; Load up and source the package manager

(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)

(require 'rclosner)
