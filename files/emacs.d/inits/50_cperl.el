(defalias 'perl-mode 'cperl-mode)
(use-package cperl-mode
  :mode (("\\.psgi\\'" . cperl-mode))
  :config
  (add-to-list 'ac-sources 'ac-source-perl-completion)
  (use-package perl-completion
    :config
    (perl-completion-mode t))
   (flymake-mode t)
   (setq indent-tabs-mode nil)
   (setq cperl-indent-level 4)
   (setq cperl-brace-offset 0)
   (setq cperl-label-offset -4)
   (setq cperl-continued-brace-offset 0)
   (setq cperl-continued-statement-offset 0)
   (setq cperl-close-paren-offset -4)
   (setq cperl-comment-column 40)
   (setq cperl-font-lock t)
   (setq cperl-indent-parens-as-block t)
   (setq cperl-highlight-variables-indiscriminately t)
   (setq cperl-tab-always-indent nil)
   (setq cperl-auto-newline nil)
   (bind-key* "C-M-p" 'cperl-perldoc))
