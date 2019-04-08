(setq inits-dir
      (expand-file-name "inits" user-emacs-directory))
(setq packages-dir
      (expand-file-name "Packages" inits-dir))
(setq custom-file
      (expand-file-name "init-custom.el" inits-dir))

(add-to-list 'load-path inits-dir)
(add-to-list 'load-path packages-dir)

(load custom-file 'no-error)

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

(require 'init-gui)
(require 'init-global)

;; Packages
(require 'init-modeline)
(require 'init-acewindow)
(require 'init-small-packages)
(require 'init-iedit-smartparens)
(require 'init-line-wrapping)
(require 'init-counsel)
(require 'init-magit)
(require 'init-elpy)             
;;(require 'init-obipython)        
(require 'init-jupyter)
(require 'init-pdf-tools)       
(require 'init-projectile)
(require 'init-org)
(require 'init-org-capture)

(emacs-init-time)
