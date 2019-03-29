(use-package ob-ipython
  :ensure t
  :config
  (add-hook 'ob-ipython-mode-hookp
	    (lambda ()
	      (elpy-mode 0)
	      (company-mode 1)))
  (add-to-list 'company-backends 'company-ob-ipython)
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)
  )

(provide 'init-obipython)
