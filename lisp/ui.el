;;; ui.el -- UI/UX related customizations

(require 'column-marker)
(require 'hl-indent)

(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(load-theme 'zenburn t)

(add-hook 'prog-mode-hook 'hl-indent-mode)
(add-hook 'find-file-hook (lambda () (interactive) (column-marker-1 80)))

(set-face-attribute 'cursor         nil :background "#FF0000")
(set-face-attribute 'default        nil :height          150)
(set-face-attribute 'hl-indent-face nil :background    "#444")
(set-face-attribute 'region         nil :background   "white"
                                        :foreground   "black")

(global-hl-line-mode    1)
(my-global-rainbow-mode 1)
(nyan-mode              1)
(scroll-bar-mode       -1)
(setq visible-bell      1)
(show-paren-mode        1)
(tool-bar-mode         -1)

(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
  (setq auto-mode-list
    (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(add-hook 'emacs-startup-hook (lambda () (toggle-frame-maximized)))
(add-hook 'emacs-startup-hook (lambda () (split-window-right)))
