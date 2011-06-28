;; These should be loaded on startup rather than autoloaded on demand
;; since they are likely to be used in every session

(server-start)

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'crosshairs)

;; General interface customizations 

(add-to-list 'load-path (concat config-dir "/interface"))

(require 'interface_config)
(require 'keybindings_config)
(require 'miscellaneous_config)
(require 'defuns_config)


;; Programming language customizations

(add-to-list 'load-path (concat config-dir "/ruby"))
(add-to-list 'load-path (concat config-dir "/lisp"))
(add-to-list 'load-path (concat config-dir "/js"))
(add-to-list 'load-path (concat config-dir "/cucumber"))
(add-to-list 'load-path (concat config-dir "/rspec"))
(add-to-list 'load-path (concat config-dir "/git"))
(add-to-list 'load-path (concat config-dir "/yasnippet"))
(add-to-list 'load-path (concat config-dir "/markdown"))

(require 'ruby_config)
(require 'lisp_config)
(require 'javascript_config)
(require 'cucumber_config)
(require 'rspec_config)
(require 'git_config)
(require 'yasnippet_config)
(require 'markdown_config)

;; Chat and Social network customizations

(add-to-list 'load-path (concat config-dir "/notify"))
(add-to-list 'load-path (concat config-dir "/jabber"))
(add-to-list 'load-path (concat config-dir "/twitter"))

(require 'notify_config)
(require 'jabber_config)
(require 'twitter_config)


(provide 'rclosner)
