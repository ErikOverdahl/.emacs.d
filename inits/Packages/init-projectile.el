(use-package projectile
  :ensure t
  :defer 1
  :init
  (setq-default
   projectile-cache-file (expand-file-name ".projectile-cache" user-emacs-directory)
   projectile-known-projects-file (expand-file-name
                                   ".projectile-bookmarks" user-emacs-directory))
  :config
;;  (projectile-global-mode 1)
  (setq-default
   projectile-completion-system 'ivy
   projectile-enable-caching t
   projectile-mode-line '(:eval (projectile-project-name))))

(use-package counsel-projectile
  :ensure t
  :config
  (counsel-projectile-mode)
  :bind-keymap
  ("C-c C-p" . projectile-mode-map))

(provide 'init-projectile)
