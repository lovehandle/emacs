(add-to-list 'load-path (concat config-dir "/jabber/jabber"))

(require 'jabber)
(require 'jabber-alert)
(require 'jabber-autoloads)

(setq jabber-account-list '(
                            ("ryan@crystalcommerce.com"
                             (:network-server . "talk.google.com")
                             (:port . 443)
                             (:connection-type . ssl))
                            ("ryan.closner@gmail.com"
                             (:network-server . "talk.google.com")
                             (:port . 443)
                             (:connection-type . ssl))))


(defun jabber-alert (from buffer text proposed-alert)
  (notify
   (concat "Msg from: " (jabber-jid-displayname from))
   text))

(defun jabber-muc-alert (nick group buffer text proposed-alert)
  (notify
   (concat "["
           (jabber-jid-displayname group)
           "]" nick ":")
   text))

(add-hook 'jabber-alert-message-hooks 'jabber-alert)
(add-hook 'jabber-alert-muc-hooks 'jabber-muc-alert)
(add-hook 'jabber-alert-presence-hooks 'jabber-alert)

(add-hook 'jabber-chat-mode-hook 'goto-address)

(provide 'jabber_config)
