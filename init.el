(add-to-list 'load-path "~/.emacs.d/settings")
(setq custom-file "~/.emacs.d/settings/emacs-custom.el")

(setq package-list '(org
		     magit
		     helm
		     projectile
		     helm-projectile
		     elpy
		     material-theme))

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(load "mu4e-config")
(load "helm-settings")
(load "python-config")
(load custom-file 'noerror)


