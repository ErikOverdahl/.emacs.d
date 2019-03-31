(use-package perspective
  :ensure t
  :config
  (persp-mode))

(use-package projectile
  :ensure t
  :defer 1
  :init
  (setq-default
   projectile-cache-file (expand-file-name ".projectile-cache" user-emacs-directory)
   projectile-keymap-prefix (kbd "C-c C-p")
   projectile-known-projects-file (expand-file-name
                                   ".projectile-bookmarks" user-emacs-directory))
  :config
  (projectile-global-mode 1)
  (setq-default
   projectile-completion-system 'ivy
   projectile-enable-caching t
   projectile-mode-line '(:eval (projectile-project-name))))

(use-package persp-projectile
  :ensure t)

(define-key projectile-mode-map (kbd "C-c C-p C-p") 'projectile-persp-switch-project)

(provide 'init-projectile)
