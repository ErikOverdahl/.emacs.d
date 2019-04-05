(use-package elisp-slime-nav
  :ensure t)

(add-hook 'emacs-lisp-mode-hook (lambda () (elisp-slime-nav-mode t)))

(provide 'init-elisp-tools)
