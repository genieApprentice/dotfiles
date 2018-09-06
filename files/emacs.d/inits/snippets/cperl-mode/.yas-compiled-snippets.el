;;; Compiled snippets and support files for `cperl-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'cperl-mode
                     '(("while" "while ($1) {\n}" "while" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/while" nil nil)
                       ("warntest" "warn 'test';" "warntest" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/warntest" nil nil)
                       ("unless" "unless $1 {$2}" "unless" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/unless" nil nil)
                       ("uniqarray" "my %tmp;\nmy @$1 = grep { $tmp{$_}++ < 1; } (@$2);\n" "uniqarray" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/uniqarray" nil nil)
                       ("undefined" "!defined" "undefined" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/undefined" nil nil)
                       ("super" "->SUPER::$1" "super" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/super" nil nil)
                       ("subroutin" "sub $1 {\n}" "subroutin" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/subroutin" nil nil)
                       ("split" "split(/$1/, $2)" "split" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/split" nil nil)
                       ("shebang" "\\#!/usr/bin/perl\n" "shebang_sysperl" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/shebang_sysperl" nil nil)
                       ("qw" "qw/$1/" "qw" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/qw" nil nil)
                       ("pheader" "#!/usr/bin/perl\n\nuse warnings;\nuse strict;\n\n" "plheader" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/plheader" nil nil)
                       ("perl_header" "use warnings;\nuse strict;\n\n" "perl_header" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/perl_header" nil nil)
                       ("mysignature" "#\n# Yoshihiro KOMATSUGAWA <genie@moove.co.jp>\n# moove Co., Ltd.\n" "mysignature" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/mysignature" nil nil)
                       ("map" "map {} $1;" "map" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/map" nil nil)
                       ("join" "join($1, $2)" "join" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/join" nil nil)
                       ("ifelse" "if ($1) {\n} else {\n}" "ifelse" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/ifelse" nil nil)
                       ("if" "if ($1) {\n}" "if" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/if" nil nil)
                       ("grep" "grep {  } $1;" "grep" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/grep" nil nil)
                       ("foreach" "foreach $1 () {\n}" "foreach" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/foreach" nil nil)
                       ("elsif" "elsif ($1) {$2}" "elsif" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/elsif" nil nil)
                       ("else" "else {$1}" "else" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/else" nil nil)
                       ("each" "my ($1, $2) = each (%$3)" "each" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/each" nil nil)
                       ("dumper" "use Data::Dumper; warn Dumper $1;" "dumper" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/dumper" nil nil)
                       ("derarray" "@{$1}" "derarray" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/derarray" nil nil)
                       ("querylog" "use DBIx::QueryLog;" "querylog" nil nil nil "/home/genie/.emacs.d/mysnippets/cperl-mode/+new-snippet+" nil nil)))


;;; Do not edit! File generated at Sun Mar 11 19:26:57 2018
