(setq org-tags-column 0)
(setq org-hide-leading-stars t)
(setq org-log-into-drawer t)
(setq org-startup-with-inline-images "inlineimages")
(setq org-odd-levels-only t)

(setq org-mode-hook nil)
(add-hook 'org-mode-hook 'variable-pitch-mode)
(defun init-org-keybindings ()
      (local-set-key "\M-n" 'outline-next-visible-heading)
      (local-set-key "\M-p" 'outline-previous-visible-heading)
      ;; table
      (local-set-key "\C-\M-w" 'org-table-copy-region)
      (local-set-key "\C-\M-y" 'org-table-paste-rectangle)
      (local-set-key "\C-\M-l" 'org-table-sort-lines)
      ;; display images
      (local-set-key "\M-I" 'org-toggle-iimage-in-org))
(add-hook 'org-mode-hook 'init-org-keybindings)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
(setq org-bullets-bullet-list
        '("◉" "●" "○" "◦" "◦" "◦" "◦"))

;; TODO states
(setq org-todo-keyword-faces
      '(("NEXT" :foreground "dodger blue" :inherit fixed-pitch)
        ("EVENT" :foreground "DarkGoldenrod1" :inherit fixed-pitch)))

;; Agenda settings
(setq org-agenda-files (list "~/Dropbox/DropsyncFiles/Org/todo.org"
			     "~/Dropbox/DropsyncFiles/Org/workprojects.org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-agenda-custom-commands
      '(("N" "Next 3 days" agenda ""
         ((org-agenda-span 3)
          (org-agenda-entry-types '(:timestamp :scheduled))))
        ("W" "Work Projects")
        )
      )

;; Org-Babel
(setq exec-path (append exec-path '("/home/francis/Programs/anaconda3/bin")))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (shell . t)
   (emacs-lisp . t)
   (ipython . t)
   (plantuml . t))
 )

(setq org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
;; Use fundamental mode when editing plantuml blocks
(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))

(provide 'init-org)
