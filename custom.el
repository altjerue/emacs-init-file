;;; custom.el --- Summary
;;; Commentary:
;;; Code:

;;---------------------------------------------------------------------
;; Color theme switcher
;;---------------------------------------------------------------------
;;(when (display-graphic-p) (color-theme-zenburn))

;;---------------------------------------------------------------------
;; Key bindings
;;---------------------------------------------------------------------
(global-set-key (kbd "s-w") 'kill-this-buffer)

;;---------------------------------------------------------------------
;; Fortran 90 programming
;;---------------------------------------------------------------------
;; new keywords
(font-lock-add-keywords 'f90-mode '(("\\<\\(dlog\\|dexp\\|dlog10\\|dsqrt\\|dabs\\|isnan\\|dmax1\\|dmin1\\|idnint\\)\\>" . font-lock-builtin-face)))

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
                (t (list dir))))))
;; (setq tabbar-buffer-list-function
;;       (lambda ()
;;         (remove-if
;;          (lambda(buffer)
;;            (find (aref (buffer-name buffer) 0) " *"))
;;          (buffer-list))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-mode-hook
   (quote
    (turn-on-reftex
     (lambda nil
       (run-hooks
        (quote prelude-latex-mode-hook)))
     er/add-latex-mode-expansions)))
 '(TeX-PDF-via-dvips-ps2pdf t)
 '(TeX-source-correlate-mode t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(auto-dim-other-buffers-mode t)
 '(blink-cursor-mode t)
 '(calendar-date-style (quote european))
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "4e753673a37c71b07e3026be75dc6af3efbac5ce335f3707b7d6a110ecb636a3" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" default)))
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote always))
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(doc-view-continuous t)
 '(eshell-directory-name "/Users/jesus/.emacs.d/savefile/eshell")
 '(f90-beginning-ampersand nil)
 '(f90-leave-line-no t)
 '(f90-mode-hook (quote (f90-add-imenu-menu abbrev-mode auto-fill-mode)))
 '(f90-program-indent 0)
 '(fci-rule-color "#383838")
 '(fill-column 75)
 '(fortran-line-length 1000)
 '(gnus-agent-enable-expiration (quote DISABLE))
 '(gnus-cloud-synced-files
   (quote
    ("~/.authinfo.gpg" "~/.gnus.el"
     (:directory "~/Mail" :match ".*.SCORE\\'"))))
 '(gnus-fetch-old-headers t)
 '(gnus-outgoing-message-group "nnimap+post.uv.es:INBOX.Sent Messages")
 '(gnus-select-method
   (quote
    (nnimap "post.uv.es"
            (nnimap-inbox INBOX)
            (nnimap-stream ssl)
            (nnimap-authenticator login)
            (nnimap-expunge non-nil)
            (nnir-search-engine imap))))
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
 '(indicate-empty-lines t)
 '(latex-preview-pane-multifile-mode (quote auctex))
 '(magit-diff-use-overlays nil)
 '(mail-source-delete-old-incoming-confirm t)
 '(mail-source-primary-source (quote non-nil))
 '(mail-user-agent (quote gnus-user-agent))
 '(message-send-mail-function (quote smtpmail-send-it))
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-export-backends (quote (ascii beamer html icalendar latex man)))
 '(org-hide-leading-stars t)
 '(org-tags-column -75)
 '(org2blog/wp-blog-alist
   (quote
    (("mula-parda" :url "https://jerue.wordpress.com/xmlrpc.php" :username "jerue103" :default-title "Hello World" :default-categories
      ("org2blog" "emacs")
      :tags-as-categories nil)
     ("molcajete" :url "https://enelmolcajete.wordpress.com/xmlrpc.php" :username "jerue103" :default-title "Hello World" :default-categories
      ("org2blog" "emacs")
      :tags-as-categories nil))))
 '(org2blog/wp-sourcecode-default-params "")
 '(org2blog/wp-use-sourcecode-shortcode t)
 '(org2blog/wp-use-tags-as-categories t)
 '(package-selected-packages
   (quote
    (offlineimap helm-projectile helm latex-preview-pane ubuntu-theme gnuplot-mode ein markdown-mode htmlize solarized-theme julia-mode julia-shell ob-sagemath ob-swift tabbar org2blog auto-dim-other-buffers auctex geiser json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company smex ido-ubiquitous flx-ido vkill exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree smartrep smartparens smart-mode-line operate-on-number move-text magit projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window)))
 '(pdf-latex-command "~/bin/llatex")
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(preview-auto-cache-preamble t)
 '(python-shell-interpreter "ipython2")
 '(python-shell-interpreter-args "-i --simple-prompt --pprint")
 '(read-mail-command (quote gnus))
 '(reftex-cite-format (quote natbib))
 '(reftex-plug-into-AUCTeX t)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(smtpmail-debug-info t)
 '(smtpmail-debug-verb t)
 '(smtpmail-smtp-server "post.uv.es")
 '(smtpmail-smtp-service 465)
 '(smtpmail-smtp-user "jerue")
 '(smtpmail-stream-type (quote ssl))
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
 '(whitespace-line-column 1000)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:slant normal :weight normal :height 130 :width normal :family "Ubuntu Mono derivative Powerline"))))
 '(auto-dim-other-buffers-face ((t (:foreground "AntiqueWhite4"))))
 '(fixed-pitch ((t (:inherit default))))
 '(tabbar-default ((t (:inherit fixed-pitch :background "gray50" :foreground "grey75" :height 0.8))))
 '(variable-pitch ((t (:family "Helvetica")))))

(provide 'custom)
;;; custom.el ends here
