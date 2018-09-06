(blink-cursor-mode 0)
(global-hl-line-mode 0)
(show-paren-mode 1)
(transient-mark-mode 1)
(global-linum-mode t)
(column-number-mode t)
(global-whitespace-mode 0)
(setq inhibit-startup-message 1)
(setq ring-bell-function 'ignore)
(setq initial-scratch-message "")

(setq display-time-day-and-date 0)
(setq echo-keystrokes 0.1)
(setq-default show-trailing-whitespace t)
(display-time)
(setq display-time-string-forms
 '((format "%s/%s(%s)%s:%s"
           month day dayname
           24-hours minutes)))

(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
