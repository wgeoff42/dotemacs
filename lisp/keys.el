;;; keys.el -- Keybindings

(require 'expand-region)
(require 'multiple-cursors)

(global-unset-key (kbd "M-<down-mouse-1>"))

(global-set-key   (kbd "C-=")         'er/expand-region)
(global-set-key   (kbd "C-c g")       'magit-status)
(global-set-key   (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
(global-set-key   (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key   (kbd "C-c r")       'revert-buffer)
