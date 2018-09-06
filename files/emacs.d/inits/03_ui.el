(defalias 'yes-or-no-p 'y-or-n-p)

(defadvice find-file (before make-directory-maybe (filename &optional wildcards) activate)
   "Create parent directory if not exists while visiting file."
   (unless (file-exists-p filename)
     (let ((dir (file-name-directory filename)))
       (unless (file-exists-p dir)
         (make-directory dir)))))

(bind-key* "C-M-a" 'beginning-of-buffer)
(bind-key* "C-M-e" 'end-of-buffer)
(bind-key* "C-h e" 'info-emacs-manual)
(bind-key* "C-t" 'other-window)
(bind-key* "M-:" 'shell-command)
(bind-key* "C-x C-c" 'shell-command)
(bind-key* "M-g" 'goto-line)
(bind-key* "C-c C-c M-x" 'execute-extended-command)
