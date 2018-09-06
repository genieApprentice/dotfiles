(setq eshell-command-aliases-list
      (append
       (list
        (list "ll" "ls -al")
        (list "emacs" "find-file $1")
        (list "d" "dired ."))))

(setq eshell-cmpl-ignore-case t)
(setq eshell-ask-to-save-history (quote always))
(setq eshell-cmpl-cycle-completions nil)
(setq eshell-cmpl-cycle-completions nil)
(setq eshell-cmpl-cycle-cutoff-length 5)
(setq eshell-hist-ignoredups t)
(defun my-eshell-prompt ()
  (concat (eshell/pwd) "\n" ))
(setq eshell-prompt-function 'my-eshell-prompt)
(setq eshell-prompt-regexp "^[^#$\n]*[#] ")

(bind-key* "C-M-s" 'eshell)
