(require 'elpy)
(elpy-enable)
(setq elpy-rpc-backend "jedi")

(add-hook 'python-mode-hook 'linum-mode)
