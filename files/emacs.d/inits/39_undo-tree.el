(use-package undo-tree
  :config
  (bind-key* "C-x DEL" 'undo-tree-undo)
  (bind-key* "C-x RET" 'undo-tree-redo)
  (bind-key* "C-M-u" 'undo-tree-visualize))


