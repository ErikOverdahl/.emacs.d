(use-package pdf-tools
    :ensure t
    :config
    (pdf-tools-install))

(use-package org-pdfview
    :ensure t)

(setq pdf-view-midnight-colors '("#ff9900" . "#0a0a12" )) ; set the amber profile as default (see below)

(defun fr/pdf-no-filter ()
  "View pdf without colour filter."
  (interactive)
  (pdf-view-midnight-minor-mode -1)
  )

(defun fr/pdf-midnite-amber ()
  "Set pdf-view-midnight-colors to amber on dark slate blue."
  (interactive)
  (setq pdf-view-midnight-colors '("#ff9900" . "#0a0a12" )) ; amber
  ;;  (setq pdf-annot-default-markup-annotation-properties "#ff0000")
  ;;  (setq pdf-annot-default-text-annotation-properties "#ff0000")
  (pdf-view-midnight-minor-mode)
  )

;; midnite mode hook
 (add-hook 'pdf-view-mode-hook (lambda ()
				 (pdf-view-midnight-minor-mode))) ; automatically turns on midnight-mode for pdfs

(provide 'init-pdf-tools)
