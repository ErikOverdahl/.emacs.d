(setq org-directory "~/Dropbox/DropsyncFiles/Org/")

;; Everything below is for getting links into Emacs from Chrome using the Org-capture extension
;; I should really document things
(require 'org-protocol)
(server-start)

(defun transform-square-brackets-to-round-ones(string-to-transform)
  "Transforms [ into ( and ] into ), other chars left unchanged."
  (concat 
  (mapcar #'(lambda (c) (if (equal c ?[) ?\( (if (equal c ?]) ?\) c))) string-to-transform))
  )

;; Kill the frame if one was created for the capture
(defvar kk/delete-frame-after-capture 0 "Whether to delete the last frame after the current capture")

(defun kk/delete-frame-if-neccessary (&rest r)
  (cond
   ((= kk/delete-frame-after-capture 0) nil)
   ((> kk/delete-frame-after-capture 1)
    (setq kk/delete-frame-after-capture (- kk/delete-frame-after-capture 1)))
   (t
    (setq kk/delete-frame-after-capture 0)
    (delete-frame))))

(advice-add 'org-capture-finalize :after 'kk/delete-frame-if-neccessary)
(advice-add 'org-capture-kill :after 'kk/delete-frame-if-neccessary)
(advice-add 'org-capture-refile :after 'kk/delete-frame-if-neccessary)

(setq org-capture-templates `(
	("p" "Protocol" entry (file+headline ,(concat org-directory "links.org") "Inbox")
        "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?")	
    ("L" "Protocol Link" entry (file+headline ,(concat org-directory "links.org") "Inbox")
     "* %? [[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\nCaptured On: %U"
     :empty-lines 1)
    ))

(provide 'init-org-capture)
