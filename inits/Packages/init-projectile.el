(use-package projectile
  :ensure t
  :init
  (setq-default
   projectile-cache-file (expand-file-name ".projectile-cache" user-emacs-directory)
   projectile-known-projects-file (expand-file-name
                                   ".projectile-bookmarks" user-emacs-directory))
  (setq projectile-keymap-prefix (kbd "C-c C-p"))
  :config
;;  (projectile-global-mode 1)
  (setq-default
   projectile-completion-system 'ivy
   projectile-enable-caching t
   projectile-mode-line '(:eval (projectile-project-name)))
  (projectile-mode))

(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-mode))

(provide 'init-projectile)
