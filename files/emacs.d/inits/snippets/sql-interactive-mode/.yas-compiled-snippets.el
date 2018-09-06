;;; Compiled snippets and support files for `sql-interactive-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sql-interactive-mode
                     '(("shtables" "SHOW TABLES;" "shtables" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/shtables" nil nil)
                       ("selectwhere" "SELECT $1 FROM $2 WHERE $3;" "selectwhere" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/selectwhere" nil nil)
                       ("selectall" "SELECT * FROM $1;" "selectall" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/selectall" nil nil)
                       ("sedistinct" "SELECT DISTINCT $1 FROM $2;" "sedistinct" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/sedistinct" nil nil)
                       ("sedatabase" "SELECT DATABASE();" "sedatabase" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/sedatabase" nil nil)
                       ("seall" "SELECT * FROM $1;" "seall" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/seall" nil nil)
                       ("grbycount" "SELECT COUNT($1) duplicate_count, $1 FROM $2 GROUP BY $1 HAVING COUNT($1) > 1;" "grbycount" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/grbycount" nil nil)
                       ("grby" "SELECT $1 FROM $2 GROUP BY $1 HAVING COUNT($1) > 1;" "grby" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/grby" nil nil)
                       ("grant" "GRANT SELECT,UPDATE,INSERT,DELETE ON $1.* TO '$2@'$3';" "grant" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/grant" nil nil)
                       ("dtformat" "DATE_FORMAT($1, '$2')" "dtformat" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/dtformat" nil nil)
                       ("druser" "DROP USER $1;" "druser" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/druser" nil nil)
                       ("droptable" "DROP TABLE $1;" "droptable" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/droptable" nil nil)
                       ("drdatabase" "DROP DATABASE $1;" "drdatabase" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/drdatabase" nil nil)
                       ("drcolumn" "DROP COLUMN $1;" "drcolumn" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/drcolumn" nil nil)
                       ("dlall" "DELETE FROM $1;" "dlall" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/dlall" nil nil)
                       ("cruser" "CREATE USER $1 IDENTIFIED BY $2;\n" "cruser" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/cruser" nil nil)
                       ("crdatabase" "CREATE DATABASE $1;" "crdatabase" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/crdatabase" nil nil)
                       ("DRDATABASE" "DROP DATABASES $1;" "DRDATABASE" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/DRDATABASE" nil nil)
                       ("drcolumn" "ALTER TABLE $1 DROP COLUMN $2;" "drcolumn" nil nil nil "/home/genie/.emacs.d/mysnippets/sql-interactive-mode/*drcolumn*" nil nil)))


;;; Do not edit! File generated at Sun Mar 11 19:26:57 2018
