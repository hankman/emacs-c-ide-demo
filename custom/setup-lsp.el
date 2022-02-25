
(require 'lsp)

(add-hook 'lsp (lambda ()
                 (let ((lsp-keymap-prefix "C-c l"))
                   (lsp-enable-which-key-integration))))
(define-key lsp-mode-map (kbd "C-c l") lsp-command-map)

(which-key-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      lsp-idle-delay 0.1)


(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (require 'dap-cpptools)
  (yas-global-mode))


(provide 'setup-lsp)
