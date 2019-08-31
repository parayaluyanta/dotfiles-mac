;(require 'dirtree)

;;;;;;;;;;;;;;; enable interactiveDO mode;;;;;;;;;;;;;;;;;;;;;;
(require 'ido)
    (ido-mode t)

;;;;;;;;;;;;;;;; enable line numbers ;;;;;;;;;;;;;;;;;;;;;;;;;
(global-linum-mode t)

;;;;;;;;;;;;;;; add solarized color theme;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized")

(package-initialize)
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)

(autoload 'typing-of-emacs "typing" "The Typing Of Emacs, a game." t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil :height 150)

;;;;;;;;;;;;;;;;;;;;;;;; fullscreen ;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized)))))


;;;;;;;;;;;;;;;;;;;;;;;;;; packages ;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

;; added for melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;http://clojure-doc.org/articles/tutorials/emacs.html
;;;;;;;;;;;;;;;;;;; clojure ;;;;;;;;;;;;;;;;;;;;;;;;

;;(defvar my-packages '(starter-kit
;;                      starter-kit-lisp
;;                      starter-kit-bindings
;;                      starter-kit-eshell
;;                      clojure-mode
;;                      clojure-test-mode
;;                      cider))
;;

;;(dolist (p my-packages)
;;  (when (not (package-installed-p p))
;;    (package-install p)))

;;(package-install "go-mode")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;; add- "mero-load-path" -to-list;;;;;;;;;;;;
;;;;;;;;;;;;;;  https://github.com/jlr/rainbow-delimiters;
;;;;;;;;;;;;;; http://www.emacswiki.org/emacs/LoadPath;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(add-to-list 'load-path "~/.emacs.d/mero-load-path/")
;;(require 'rainbow-delimiters)
;;(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;;;;;;;;;;;;;;;;;;M-x rainbow-delimiters-mode;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(put 'upcase-region 'disabled nil)

;; https://github.com/bbatsov/projectile
(unless (package-installed-p 'projectile)
  (package-install 'projectile))

