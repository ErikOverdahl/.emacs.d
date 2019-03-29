(use-package adaptive-wrap
  :ensure t
  :init
  (add-hook 'visual-line-mode-hook #'adaptive-wrap-prefix-mode)
  :config
  (setq-default adaptive-wrap-extra-indent 2)
  )

(global-visual-line-mode +1)

(provide 'init-line-wrapping)
