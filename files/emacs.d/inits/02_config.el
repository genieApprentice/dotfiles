(setq make-backup-files nil)
(setq delete-auto-save-files t)
(setq auto-save-default nil)
(setq create-lockfiles nil)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

(setq history-length 1000)
(savehist-mode 1)

(save-place-mode 1)

(setq gc-cons-threshold (* 10 gc-cons-threshold))
(setq large-file-warning-threshold (* 25 1024 1024))
(setq max-specpdl-size 10000)
(setq max-lisp-eval-depth 10000)
(setq message-log-max 10000)
