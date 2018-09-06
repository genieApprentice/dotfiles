(ido-mode t)
(setq ido-max-window-height 0.8)
(setq ido-enable-flex-matching t)
(bind-key* "C-x C-d" 'ido-dired)
(bind-key* "C-x C-b" 'ido-switch-buffer)
(use-package smex
  :config
  (smex-initialize)
  (bind-key* "M-x" 'smex)
  (bind-key* "M-X" 'smex-major-mode-commands))
(use-package ido-vertical-mode
  :config
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)
  (setq ido-vertical-define-keys 'C-n-C-p-up-and-down)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)
  (ido-vertical-mode 1))
