(use-package jupyter
  :ensure t)

(defun my-org-confirm-babel-evaluate (lang body)
  (not (string= lang "jupyter-python")))  ; don't ask for ditaa
(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

(provide 'init-jupyter)
