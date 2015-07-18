(setq org-page-config-packages
    '(
      org-page
      ))

(defun org-page-config/init-org-page()
  (use-package org-page
    :defer t
    :config
    (
     (add-to-list 'load-path "~/.emacs.d/elpa/org-page-20150709.144")
     (require 'org-page)
     (setq op/repository-directory "/Work/test")
     (setq op/site-domain "http://your.personal.site.com/")
     (message "ooooookkkkkk")
;;; for commenting, you can choose either disqus or duoshuo
     ;;(setq op/personal-disqus-shortname "your_disqus_shortname")
     ;;(setq op/personal-duoshuo-shortname "your_duoshuo_shortname")
;;; the configuration below are optional
     ;;(setq op/personal-google-analytics-id "your_google_analytics_id")
     )
     )
  )

;;(defun lua-config/post-init-company()
 ;; (use-package company
  ;;  :defer t
   ;; :config
    ;;(spacemacs|add-company-hook lua-mode)))
