(use-package iedit
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  )

(use-package smartparens
    :ensure t
    :config
    (use-package smartparens-config)
    (use-package smartparens-html)
    (use-package smartparens-python)
    (use-package smartparens-latex)
    (smartparens-global-mode t)
    (show-smartparens-global-mode t))

(provide 'init-iedit-smartparens)
