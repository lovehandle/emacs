;; Defaults
(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'imenu-auto-rescan t)

(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

;; Coding Hook
(defvar coding-hook nil
  "Hook that gets run on activation of any programming mode.")

(defun turn-on-whitespace ()
  (whitespace-mode t))

(defun add-watchwords ()
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\|TODO\\|FIXME\\|HACK\\|REFACTOR\\):"
          1 font-lock-warning-face t))))

(defun turn-on-save-place-mode ()
  (setq save-place t))

(defun turn-on-crosshairs-mode ()
  (crosshairs-mode t))

(add-hook 'coding-hook 'turn-on-whitespace)
(add-hook 'coding-hook 'add-watchwords)
(add-hook 'coding-hook 'turn-on-save-place-mode)
(add-hook 'coding-hook 'turn-on-crosshairs-mode)

(defun run-coding-hook ()
  "Enable things that are convenient across all coding buffers."
  (interactive)
  (run-hooks 'coding-hook))

;; Text mode hook
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'turn-on-flyspell)

(provide 'miscellaneous_config)
