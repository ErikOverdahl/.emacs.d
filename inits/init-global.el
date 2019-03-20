(fset 'yes-or-no-p 'y-or-n-p)

;; Put backup files in their own directory instead of cluttering
;; directories with '~' files all over the place
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))
