;;; init.el -- The first thing GNU Emacs runs

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defvar my-load-libs
  '(
    "my-packages"
    "ui"
    "nav"
    "keys"
  ))

(dolist (p my-load-libs)
  (load-library p))

(autoload 'pianobar "pianobar" nil t)
