;; TODO states
(setq org-todo-keywords
      '((sequence "TODO" "NEXT" "|" "DONE")
        (sequence "EVENT" "|" "FINISHED")))
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

;; Time tracking
(require 'org-id)
(setq org-id-link-to-org-use-id t)

(defun fr/org-id-add-ids-to-headlines ()
  (interactive)
  (org-map-entries (lambda))
