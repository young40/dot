(setq org-config-packages '(org))

(defun org-config/init-org ()
  (use-package org
    :config
    (progn
      (setq org-directory "~/org")
      (setq org-default-notes-file "~/org/todo.org")
      (setq org-agenda-files
            (list
             "~/org/todo.org"
             "~/org/home.org"
             "~/org/work.org"
             "~/org/life.org"
             ))

      (defun gtd()
        (interactive)
        (find-file "~/org/todo.org"))

      (setq org-log-done 'time)

      (setq org-capture-templates
            (quote
             (
              ("t" "TODO" entry
               (file+headline
                "~/org/todo.org"
                "Todos")
               "* TODO  %?			%T
 %i
 Link: %l
")

              ("h" "Home TODO" entry
               (file+headline
                "~/org/home.org"
                "Homes")
               "* TODO  %?			%T
 %i
 Link: %l
")
              ("w" "Work TODO" entry
               (file+headline
                "~/org/work.org"
                "Works")
               "* TODO  %?			%T
 %i
 Link: %l
")
              ("l" "Life TODO" entry
               (file+headline
                "~/org/life.org"
                "Lives")
               "* TODO  %?			%T
 %i
 Link: %l
")

               )))
      )))
