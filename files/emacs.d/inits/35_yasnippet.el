(use-package yasnippet
  :config
  (setq yas-snippet-dirs
        '(snippet-path
          yas-installed-snippets-dir))
  (bind-key* "C-x a n" 'yas-new-snippet)
  (bind-key* "C-x a v" 'yas-visit-snippet-file)
  (bind-key* "C-x /" 'yas-insert-snippet)
  (yas-global-mode 1))
