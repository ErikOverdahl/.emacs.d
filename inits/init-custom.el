
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    (quote
;;     ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
;;  '(indent-tabs-mode nil)
;;  '(org-mode-hook
;;    (quote
;;     ((lambda nil
;;        (org-bullets-mode 1))
;;      variable-pitch-mode ob-ipython-auto-configure-kernels
;;      #[0 "\300\301\302\303\304$\207"
;;          [add-hook change-major-mode-hook org-show-block-all append local]
;;          5]
;;      #[0 "\300\301\302\303\304$\207"
;;          [add-hook change-major-mode-hook org-babel-show-result-all append local]
;;          5]
;;      org-babel-result-hide-spec org-babel-hide-all-hashes)))
;;  '(package-selected-packages
;;    (quote
;;     (org-bullets adaptive-wrap olivetti gruvbox-theme ob-ipython elpy dashboard magit counsel smartparens rainbow-delimiters org-pdfview pdf-tools iedit ace-window try which-key use-package))))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages
   (quote
    (persp-projectile perspective which-key use-package try smartparens smart-mode-line rainbow-delimiters projectile org-pdfview org-bullets olivetti ob-ipython magit iedit gruvbox-theme elpy dashboard counsel adaptive-wrap ace-window))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-document-info ((t (:inherit fixed-pitch :foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit fixed-pitch))))
 '(org-document-title ((t (:inherit default :weight bold :height 2.0 :underline t :foreground "#f5f5f5"))))
 '(org-done ((t (:inherit fixed-pitch))))
 '(org-level-1 ((t (:inherit default :weight bold :height 1.5 :foreground "#f5f5f5"))))
 '(org-level-2 ((t (:inherit default :weight bold :height 1.375 :foreground "#f5f5f5"))))
 '(org-level-3 ((t (:inherit default :weight bold :height 1.25 :foreground "#f5f5f5"))))
 '(org-level-4 ((t (:inherit default :weight bold :height 1.125 :foreground "#f5f5f5"))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "#f5f5f5"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "#f5f5f5"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "#f5f5f5"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "#f5f5f5"))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-priority ((t (:inherit fixed-pitch))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-todo ((t (:inherit fixed-pitch))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch))))))

(provide 'init-custom)
