;; An init.el for use testing new features
;; Want to keep usual theme and some packages
;; but not load everything

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa2" . "http://www.mirrorservice.org/sites/melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox-dark-hard t))

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq display-time-day-and-date 1)
(display-time-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

(defalias 'list-buffers 'ibuffer)

(set-face-attribute 'default nil :family "Office Code Pro" :foreground "#f5f5f5")
(set-face-attribute 'fixed-pitch nil :family "Office Code Pro")
(set-face-attribute 'variable-pitch nil :family "Liberation Serif" :height 130)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package ace-window
  :ensure t)
(global-set-key (kbd "M-o") 'ace-window)

(use-package try
  :ensure t)
