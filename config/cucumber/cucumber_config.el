(add-to-list 'load-path (concat config-dir "/cucumber/cucumber"))
(require 'feature-mode)

(add-to-list 'auto-mode-alist '("\\.feature\\'" . feature-mode))

(provide 'cucumber_config)
