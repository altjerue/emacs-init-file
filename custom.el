;;; custom.el --- Summary
;;; Commentary:
;;; Code:

;; Start server
;;(server-start)

;; ------------------------------  Org Mode --------------------------------
;;
;; --> Org-projectile
;; (require 'org-projectile)
;; (org-projectile:prompt)
;; (add-to-list 'org-capture-templates
;;              (org-projectile:project-todo-entry "l" "* TODO %? %a\n" "Linked Project TODO"))
;; (add-to-list 'org-capture-templates
;;              (org-projectile:project-todo-entry "t" "* TODO %? \n" "Simple TODO entry"))
;; (add-to-list 'org-capture-templates
;;              (org-projectile:project-todo-entry "p"))
;; (setq org-confirm-elisp-link-function nil)
;; (setq org-agenda-files (append org-agenda-files (org-projectile:todo-files)))
;; (global-set-key (kbd "C-c c") 'org-capture)
;; (global-set-key (kbd "C-c M-c") 'org-projectile:project-todo-completing-read)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-master nil)
 '(TeX-parse-self t)
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(auth-source-save-behavior nil)
 '(auto-dim-other-buffers-mode t)
 '(backup-directory-alist (quote ((".*" . "/Users/jesus/.ebackups/"))))
 '(calendar-date-style (quote european))
 '(column-number-mode t)
 '(compilation-always-kill t)
 '(compilation-message-face (quote default))
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(default-input-method "spanish-prefix")
 '(diary-file "~/org/diary")
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote always))
 '(eshell-directory-name "/Users/jesus/.emacs.d/savefile/eshell")
 '(f90-beginning-ampersand nil)
 '(f90-leave-line-no t)
 '(f90-mode-hook (quote (f90-add-imenu-menu abbrev-mode auto-fill-mode)))
 '(f90-program-indent 0)
 '(fci-rule-color "#383838")
 '(fill-column 75)
 '(font-latex-fontify-script nil)
 '(fortran-line-length 1000)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-sexp-background-color "#060404")
 '(indicate-empty-lines t)
 '(latex-preview-pane-multifile-mode (quote auctex))
 '(locate-command "mdfind -name")
 '(magit-diff-use-overlays nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-include-diary t)
 '(org-capture-templates
   (quote
    (("l" "Linked Project TODO" entry
      (function
       (lambda nil
         (org-projectile:location-for-project
          (org-projectile:project-heading-from-file
           (org-capture-get :original-file)))))
      "* TODO %? %a
")
     ("p" "Project Todo" entry
      (function
       (lambda nil
         (org-projectile:location-for-project
          (org-projectile:project-heading-from-file
           (org-capture-get :original-file)))))
      "* TODO %?
"))))
 '(org-export-backends (quote (ascii beamer html icalendar latex man)))
 '(org-hide-leading-stars t)
 '(org-mobile-directory "~/Dropbox/Aplicaciones/MobileOrg")
 '(org-tags-column -75)
 '(package-selected-packages
   (quote
    (scss-mode markdown-mode yaml-mode anaconda-mode async avy company dash git-commit helm helm-core ht ido-completing-read+ ido-ubiquitous magit-popup marshal org projectile s with-editor yasnippet zop-to-char zenburn-theme which-key web-mode volatile-highlights vkill undo-tree tabbar smex smartrep smartparens smart-mode-line rainbow-mode rainbow-delimiters ov org-projectile operate-on-number move-text magit json-mode js2-mode imenu-anywhere helm-projectile guru-mode grizzl god-mode gnuplot-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck flx-ido expand-region exec-path-from-shell elisp-slime-nav editorconfig easy-kill discover-my-major diminish diff-hl crux company-auctex company-anaconda cdlatex browse-kill-ring beacon anzu ace-window)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(prelude-whitespace nil)
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--simple-prompt -i --automagic")
 '(reftex-cite-format (quote natbib))
 '(reftex-load-hook (quote (imenu-add-menubar-index)))
 '(reftex-mode-hook (quote (imenu-add-menubar-index)))
 '(reftex-plug-into-AUCTeX t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(solarized-use-variable-pitch nil)
 '(tabbar-mode t nil (tabbar))
 '(tabbar-mwheel-mode t nil (tabbar))
 '(tabbar-use-images nil)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(tramp-default-method "sshx")
 '(user-mail-address "jesus.rueda@uv.es")
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"]))
'(xterm-color-names-bright
  ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"])
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 120 :family "Roboto Mono Medium for Powerline")))))

;; (provide 'custom)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;---------------------------------------------------------------------
;; Key bindings
;;---------------------------------------------------------------------
;; (global-set-key (kbd "s-w") 'kill-this-buffer)
;; (global-set-key (kbd "C-x C-c") 'delete-frame)

;;---------------------------------------------------------------------
;; Fortran 90 programming
;;---------------------------------------------------------------------
;; new keywords
(font-lock-add-keywords 'f90-mode '(("\\<\\(dlog\\|dexp\\|dlog10\\|dsqrt\\|dabs\\|isnan\\|dmax1\\|dmin1\\|idnint\\)\\>" . font-lock-builtin-face)))

;;---------------------------------------------------------------------
;; LaTeX
;;---------------------------------------------------------------------
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;;---------------------------------------------------------------------
;; GNUplot
;;---------------------------------------------------------------------
(setq auto-mode-alist (append '(("\\.gp$" . gnuplot-mode))
                              auto-mode-alist))

;;---------------------------------------------------------------------
;; Tabbar
;;---------------------------------------------------------------------
(global-set-key [M-s-left] 'tabbar-backward-tab)
(global-set-key [M-s-right] 'tabbar-forward-tab)
(global-set-key (kbd "s-b") 'tabbar-press-home)
;; Activate NeoTree
(global-set-key [f8] 'neotree-toggle)

(setq tabbar-buffer-groups-function
      (lambda ()
        (let ((dir (expand-file-name default-directory)))
          (cond ((member (buffer-name) '("*Completions*"
                                         "*scratch*"
                                         "*Messages*"
                                         "*Ediff Registry*"))
                 (list "#Emacs"))
                ;;                ((string-match-p "^\\*.+\\*$" (buffer-name))
                ((string-match-p "^\\*.+$" (buffer-name))
                 (list "#Rest"))
                ((string-match-p "/.emacs.d/" dir)
                 (list ".emacs.d"))
                ((string-match-p "\*.?Python\[?.*\]?\*" dir)
                 (list "#Python"))
                (t (list dir))))))

;;; custom.el ends here
