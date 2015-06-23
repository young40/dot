(setq lua-config-packages
      '(lua-mode
        company))


(defun lua-config/post-init-lua-mode()
  (use-package lua-mode
    :defer t
    :config
    (push 'company-dabbrev company-backends-lua-mode)
    (push 'company-etags company-backends-lua-mode)
    ))


(defun lua-config/post-init-company()
  (use-package company
    :defer t
    :config
    (spacemacs|add-company-hook lua-mode)))
