(defun close-emacs()
  (interactive)
  (save-buffers-kill-terminal))
(defun close-all-buffers()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
(defun scroll-down-one-line()
  (interactive)
  (scroll-down 1)
  (previous-line))
(defun scroll-up-one-line()
  (interactive)
  (scroll-up 1)
  (next-line))
(defun insert-single-quotes()
  (interactive)
  (insert-char #x27 2)
  (backward-char))
(defun insert-double-quotes()
  (interactive)
  (insert-char #x22 2)
  (backward-char))
(defun insert-brackets()
  (interactive)
  (insert-char #x5B)
  (insert-char #x5D)
  (backward-char))
(defun insert-braces()
  (interactive)
  (insert-char #x7B)
  (insert-char #x7D)
  (backward-char))
(defun insert-angle-brackets()
  (interactive)
  (insert-char #x3C)
  (insert-char #x3E)
  (backward-char))
(defun search-commands()
  (interactive)
  (anything-M-x))
(defun search-files()
  (interactive)
  (anything-find-files))
(defun search-buffers()
  (interactive)
  (anything-for-buffers))
(defun kmacro-save (symbol)
  (interactive "SName for last kbd macro: ")
  (name-last-kbd-macro symbol)
  (with-current-buffer (find-file-noselect "~/.emacs.d/kmacro-save-file")
  (goto-char (point-max))
  (insert-kbd-macro symbol)
  (basic-save-buffer)))
(defun all-indent ()
       (interactive)
       (mark-whole-buffer)
       (indent-region (region-beginning)(region-end))
            (point-undo))

(defun sh-command (command)
  (interactive "sshell command: ")
  (async-shell-command command))
(defun mkdir ()
  (interactive)
  (async-shell-command (concat "mkdir -p " (ido-read-file-name "csvfile's path :"))))
(defun rmdir ()
  (interactive)
  (async-shell-command (concat "rmdir " (ido-read-directory-name "dir path :"))))
(defun rmrfdir ()
  (interactive)
  (async-shell-command (concat "rm -rf  " (ido-read-directory-name "dir path :"))))
(defun rm ()
  (interactive)
  (async-shell-command (concat "rm " (ido-read-file-name "file path :"))))
(defun touch ()
  (interactive)
  (async-shell-command (concat "touch " (ido-read-file-name "file path :"))))
(defun ll ()
  (interactive)
  (async-shell-command (concat "ls -al " (ido-read-directory-name "dir path :"))))
(defun chmod (permission)
  (interactive "spermission :")
  (async-shell-command (concat "chmod " permission " " (ido-read-file-name "file path :"))))

;; copied from rails-lib.el
(defun decamelize (string)
  "Convert from CamelCaseString to camel_case_string."
  (let ((case-fold-search nil))
    (downcase
     (replace-regexp-in-string
      "\\([A-Z]+\\)\\([A-Z][a-z]\\)" "\\1_\\2"
      (replace-regexp-in-string
       "\\([a-z\\d]\\)\\([A-Z]\\)" "\\1_\\2"
       string)))))
(defun camerize<->decamelize-on-region (s e)
  (interactive "r")
  (let ((buf-str (buffer-substring-no-properties s e))
        (case-fold-search nil))
    (cond
     ((string-match "_" buf-str)
      (let* ((los (mapcar 'capitalize (split-string buf-str "_" t)))
             (str (mapconcat 'identity los "")))
        ;; snake case to camel case
        (delete-region s e)
        (insert str)))
     (t
      (let* ((str (ik:decamelize buf-str)))
        ;; snake case to camel case
        (delete-region s e)
        (insert str))))))
