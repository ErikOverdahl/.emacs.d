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
   projectile-completion-system 'helm
   projectile-enable-caching t
   projectile-mode-line '(:eval (projectile-project-name))))

(provide 'init-projectile)
