;;; nav.el -- Navigation and file formatting

(require 'ido-vertical-mode)
(require 'rbenv)
(require 'smartparens-config)
(require 'web-mode)
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))


(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(setq rbenv-modeline-function 'rbenv--modeline-plain)
(global-rbenv-mode)

(add-hook 'after-init-hook  'global-company-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(ido-mode 1)
  (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-and-C-p-only)
(projectile-global-mode)
(smartparens-global-mode 1)

(setq-default indent-tab-mode             nil)
(setq-default tab-width                     2)
(setq         c-basic-offset                2)
(setq         css-indent-offset             2)
(setq         web-mode-markup-indent-offset 2)

(setq web-mode-enable-auto-pairing -1)
