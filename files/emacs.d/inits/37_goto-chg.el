(use-package goto-chg
  :config
  (bind-key* "C-x c" 'goto-last-change)
  (bind-key* "C-x S-c" 'goto-last-change-reverse))

