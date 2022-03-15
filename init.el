
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(require 'powerline)
(powerline-default-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-global-modes (quote (not eshell-mode)))
 '(company-idle-delay 0.0)
 '(company-minimum-prefix-length 1)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(exwm-floating-border-color "#262626")
 '(global-company-mode t)
 '(highlight-changes-colors (quote ("#DC8CC3" "#bbb0cb")))
 '(highlight-symbol-colors
   (quote
    ("#67605e255590" "#4e615e515e24" "#5f8b4d004c7a" "#55b0556a5e39" "#4ce7558e4c96" "#5f01556d4cad" "#4e615e515e24")))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   (quote
    (("#4F4F4F" . 0)
     ("#488249" . 20)
     ("#5dacaf" . 30)
     ("#57a2a4" . 50)
     ("#b6a576" . 60)
     ("#ac7b5a" . 70)
     ("#aa5790" . 85)
     ("#4F4F4F" . 100))))
 '(hl-bg-colors
   (quote
    ("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249")))
 '(hl-fg-colors
   (quote
    ("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F")))
 '(hl-paren-colors (quote ("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F")))
 '(jdee-db-active-breakpoint-face-colors (cons "#000000" "#8CD0D3"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#000000" "#7F9F7F"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#000000" "#494949"))
 '(lsp-ui-doc-border "#FFFFEF")
 '(mode-line-format
   (quote
    ("%e"
     (:eval
      (let*
          ((active
            (powerline-selected-window-active))
           (mode-line-buffer-id
            (if active
                (quote mode-line-buffer-id)
              (quote mode-line-buffer-id-inactive)))
           (mode-line
            (if active
                (quote mode-line)
              (quote mode-line-inactive)))
           (face0
            (if active
                (quote powerline-active0)
              (quote powerline-inactive0)))
           (face1
            (if active
                (quote powerline-active1)
              (quote powerline-inactive1)))
           (face2
            (if active
                (quote powerline-active2)
              (quote powerline-inactive2)))
           (face-hl
            (quote wn-modeline-face))
           (separator-left
            (intern
             (format "powerline-%s-%s"
                     (powerline-current-separator)
                     (car powerline-default-separator-dir))))
           (separator-right
            (intern
             (format "powerline-%s-%s"
                     (powerline-current-separator)
                     (cdr powerline-default-separator-dir))))
           (lhs
            (list
             (powerline-raw
              (format " %s"
                      (wn--selected-window-number))
              face-hl
              (quote l))
             (funcall separator-left face-hl face0)
             (powerline-raw "%*" face0
                            (quote l))
             (when powerline-display-buffer-size
               (powerline-buffer-size face0
                                      (quote l)))
             (when powerline-display-mule-info
               (powerline-raw mode-line-mule-info face0
                              (quote l)))
             (powerline-buffer-id
              (\`
               (mode-line-buffer-id
                (\, face0)))
              (quote l))
             (when
                 (and
                  (boundp
                   (quote which-func-mode))
                  which-func-mode)
               (powerline-raw which-func-format face0
                              (quote l)))
             (powerline-raw " " face0)
             (funcall separator-left face0 face1)
             (when
                 (and
                  (boundp
                   (quote erc-track-minor-mode))
                  erc-track-minor-mode)
               (powerline-raw erc-modified-channels-object face1
                              (quote l)))
             (powerline-major-mode face1
                                   (quote l))
             (powerline-process face1)
             (powerline-narrow face1
                               (quote l))
             (powerline-raw " " face1)
             (funcall separator-left face1 face2)
             (powerline-vc face2
                           (quote r))
             (when
                 (bound-and-true-p nyan-mode)
               (powerline-raw
                (list
                 (nyan-create))
                face2
                (quote l)))))
           (rhs
            (list
             (powerline-raw global-mode-string face2
                            (quote r))
             (funcall separator-right face2 face1)
             (unless window-system
               (powerline-raw
                (char-to-string 57505)
                face1
                (quote l)))
             (powerline-raw "%4l" face1
                            (quote l))
             (powerline-raw ":" face1
                            (quote l))
             (powerline-raw "%3c" face1
                            (quote r))
             (funcall separator-right face1 face0)
             (powerline-raw " " face0)
             (powerline-raw "%6p" face0
                            (quote r))
             (when powerline-display-hud
               (powerline-hud face0 face2))
             (powerline-fill face0 0))))
        (concat
         (powerline-render lhs)
         (powerline-fill face2
                         (powerline-width rhs))
         (powerline-render rhs)))))))
 '(objed-cursor-color "#CC9393")
 '(package-selected-packages
   (quote
    (rainbow-delimiters dap-mode helm-xref which-key flycheck helm-lsp lsp-treemacs lsp-mode magit yasnippet-snippets nyan-mode zygospore zenburn-theme yasnippet ws-butler wn-mode volatile-highlights use-package undo-tree spaceline solarized-theme iedit helm-themes helm-swoop helm-projectile helm-gtags dtrt-indent dream-theme doom-themes doom-modeline company comment-dwim-2 clean-aindent-mode atom-dark-theme arc-dark-theme anzu)))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
 '(rustic-ansi-faces
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCDC"])
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(vc-annotate-background-mode nil)
 '(weechat-color-list
   (quote
    (unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F")))
 '(wn-mode t)
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(error ((t (:background "brightyellow" :foreground "color-160" :weight bold))))
 '(mode-line-inactive ((t (:background "color-247" :foreground "#5F7F5F"))))
 '(powerline-active0 ((t (:inherit mode-line :background "#010000"))))
 '(powerline-active1 ((t (:inherit mode-line :background "color-18"))))
 '(powerline-inactive0 ((t (:inherit mode-line-inactive))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "color-247"))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "color-247"))))
 '(show-paren-match ((t (:background "color-28" :foreground "color-190" :weight bold))))
 '(vertical-border ((t (:background "color-247" :foreground "color-22"))))
 '(wn-modeline-face ((t (:background "color-28" :foreground "color-52")))))


(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags))
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

(wn-mode)

(load-theme 'zenburn t)

(require 'nyan-mode)
(nyan-mode)

(global-set-key [(f4)] 'eshell)
(global-set-key [(f5)] 'goto-line)
(global-set-key [(f7)] 'compile)
(global-set-key [(f6)] 'speedbar-get-focus)
(global-set-key [(f9)] 'list-bookmarks)
(global-set-key [(f10)] 'bookmark-set)
(global-set-key [(f3)] 'dired)


(defalias 'yes-or-no-p 'y-or-n-p)

;; custom c++
(require 'yasnippet)
(yas-global-mode 1)

(c-add-style "microsoft"
             '("stroustrup"
               (c-offsets-alist
                (innamespace . -)
                (inline-open . 0)
                (inher-cont . c-lineup-multi-inher)
                (arglist-cont-nonempty . +)
                (template-args-cont . +))))
(setq c-default-style "microsoft")

(require 'setup-lsp)
