(require 'org)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)

(setq org-agenda-files (quote ("~/Dropbox/org")))

(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file "refile.org")

(global-set-key (kbd "C-c c") 'org-capture)
      
(setq org-log-done 'time)
(org-babel-do-load-languages 'org-babel-load-languages
			     '((python . t)
			       (emacs-lisp . t)
			       (sh . t)))
(setq org-src-fontify-natively t)

(defun my-org-confirm-babel-evaluate (lang body)
  (not (string= lang "python")))

(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)
