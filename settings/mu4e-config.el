(require 'mu4e)

;; default
;; (setq mu4e-maildir "~/Maildir")

(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; (See the documentation for `mu4e-sent-messages-behavior' if you have
;; additional non-Gmail addresses and want assign them different
;; behavior.)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
    '( ("/INBOX"               . ?i)
       ("/[Gmail].Sent Mail"   . ?s)
       ("/[Gmail].Trash"       . ?t)
       ("/2017"                . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq user-mail-address "streltsov.dmitry@gmail.com")
(setq user-full-name  "Dmitry Streltsov")
(setq mu4e-compose-signature (concat
			      "С уважением,\n"
			      "Дмитрий Стрельцов\n"))
(setq mu4e-compose-signature-auto-include nil)
 
;; alternatively, for emacs-24 you can use:
(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
    smtpmail-stream-type 'starttls
    smtpmail-default-smtp-server "smtp.gmail.com"
    smtpmail-smtp-server "smtp.gmail.com"
    smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

(setq mu4e-html2text-command "html2text -utf8 -width 72")
 
(setq mail-user-agent 'mu4e-user-agent)

(setq mu4e-user-mail-address-list '("streltsov.dmitry@gmail.com"))
;;(setq mu4e-compose-complete-only-personal t)

(setq mu4e-view-show-addresses t)
(setq mu4e-attachment-dir "~/Downloads")

