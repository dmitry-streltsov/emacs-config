(load-theme 'material t)

(set-default-font "Terminus-13")

(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; remove toolbar
(tool-bar-mode -1)

;; remove scrollbar
(scroll-bar-mode -1)

;; no splash screen
(setq inhibit-splash-screen t)

;; remove menu bar
(menu-bar-mode -1)

;; Change title bar to ~/directory if the current buffer is a
;; real file or buffer name if it is just a buffer.
(setq frame-title-format 
      '(:eval 
        (if buffer-file-name 
            (replace-regexp-in-string 
             (getenv "HOME") "~"
             (file-name-directory buffer-file-name)) 
          (buffer-name))))

;; localization
(setq default-buffer-file-coding-system 'utf-8)
(setq default-file-name-coding-system 'utf-8)
(setq default-input-method 'russian-computer)

;; turn-off bell
(setq visible-bell t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; keybindings
(global-set-key (kbd "C-x g") 'magit-status) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" default)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-sane-defaults)))
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "zathura %s")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
