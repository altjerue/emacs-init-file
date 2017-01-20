;;; custom.el --- Summary
;;; Commentary:
;;; Code:

(disable-theme 'zenburn)

;; Start server
(server-start)

;;---------------------------------------------------------------------
;; Key bindings
;;---------------------------------------------------------------------
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "C-x C-c") 'delete-frame)

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
                ((member (buffer-name) '("*Group*"
                                         "*unsent mail*"
                                         "*Summary INBOX*"
                                         "*Article INBOX*"))
                 (list "#Mail"))
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
 '(LaTeX-command "latex --synctex=1")
 '(LaTeX-mode-hook
   (quote
    (turn-on-reftex
     (lambda nil
       (run-hooks
        (quote prelude-latex-mode-hook)))
     er/add-latex-mode-expansions)))
 '(TeX-PDF-via-dvips-ps2pdf t)
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-list
   (quote
    (("DVI Viewer" "open %o")
     ("PDF Tools" TeX-pdf-tools-sync-view)
     ("HTML Viewer" "open %o"))))
 '(TeX-view-program-selection
   (quote
    ((output-dvi "DVI Viewer")
     (output-pdf "PDF Tools")
     (output-html "HTML Viewer"))))
 '(alert-default-style (quote osx-notifier))
 '(ansi-color-names-vector
   ["#3c4446" "#d81e00" "#5ea702" "#cfae00" "#427ab3" "#89658e" "#00a7aa" "#dbded8"])
 '(auth-source-save-behavior nil)
 '(auto-dim-other-buffers-mode t)
 '(bbdb-complete-mail-allow-cycling t)
 '(bbdb-vcard-directory "~/Documents/Contactos/")
 '(bbdb-vcard-skip-on-import (quote ("^X-GSM-" "^PHOTO")))
 '(calendar-date-style (quote european))
 '(column-number-mode t)
 '(compilation-always-kill t)
 '(compilation-message-face (quote default))
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (ubuntu smart-mode-line-respectful)))
 '(custom-safe-themes
   (quote
    ("9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" default)))
 '(custom-theme-allow-multiple-selections t)
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote always))
 '(display-time-24hr-format t)
 '(display-time-mail-file (quote none))
 '(display-time-mail-string "")
 '(display-time-mode t)
 '(eshell-directory-name "/Users/jesus/.emacs.d/savefile/eshell")
 '(f90-beginning-ampersand nil)
 '(f90-leave-line-no t)
 '(f90-mode-hook (quote (f90-add-imenu-menu abbrev-mode auto-fill-mode)))
 '(f90-program-indent 0)
 '(fci-rule-color "#383838")
 '(fill-column 75)
 '(fortran-line-length 1000)
 '(gnus-agent-enable-expiration (quote DISABLE))
 '(gnus-build-sparse-threads (quote more))
 '(gnus-cloud-synced-files
   (quote
    ("~/.authinfo.gpg" "~/.gnus.el"
     (:directory "~/Mail" :match ".*.SCORE\\'"))))
 '(gnus-demon-handlers (quote ((gnus-demon-scan-mail 2 t))))
 '(gnus-desktop-notify-behavior (quote gnus-desktop-notify-single))
 '(gnus-desktop-notify-function (quote gnus-desktop-notify-alert))
 '(gnus-desktop-notify-mode t nil (gnus))
 '(gnus-dired-mail-mode (quote message-user-agent))
 '(gnus-extract-address-components (quote mail-extract-address-components))
 '(gnus-fetch-old-headers t)
 '(gnus-group-mode-hook (quote (gnus-topic-mode gnus-agent-mode)))
 '(gnus-message-setup-hook (quote (message-remove-blank-cited-lines)))
 '(gnus-outgoing-message-group "nnimap+post.uv.es:INBOX.Sent Messages")
 '(gnus-refer-thread-use-nnir t)
 '(gnus-select-method
   (quote
    (nnimap "post.uv.es"
            (nnimap-inbox INBOX)
            (nnimap-stream ssl)
            (nnimap-authenticator login)
            (nnimap-expunge non-nil)
            (nnir-search-engine imap))))
 '(gnus-subthread-sort-functions (quote (gnus-thread-sort-by-date)))
 '(gnus-summary-line-format "%U%R%z %(%5k  %-15,15&user-date;  %-23,23f  %B%s%)
")
 '(gnus-summary-thread-gathering-function (quote gnus-gather-threads-by-references))
 '(gnus-thread-hide-subtree nil)
 '(gnus-thread-sort-functions (quote (gnus-thread-sort-by-most-recent-date)))
 '(indicate-empty-lines t)
 '(latex-preview-pane-multifile-mode (quote auctex))
 '(locate-command "mdfind -name")
 '(magit-diff-use-overlays nil)
 '(mail-source-delete-old-incoming-confirm t)
 '(mail-source-primary-source (quote non-nil))
 '(mail-user-agent (quote gnus-user-agent))
 '(message-kill-buffer-on-exit t)
 '(message-send-mail-function (quote smtpmail-send-it))
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(nnmail-expiry-target "nnimap+post.uv.es:INBOX.Trash")
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
    (fill-column-indicator web-mode bbdb-vcard pdf-tools alert offlineimap latex-preview-pane ubuntu-theme gnuplot-mode ein markdown-mode htmlize julia-mode julia-shell ob-sagemath ob-swift tabbar org2blog auto-dim-other-buffers auctex geiser json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company smex ido-ubiquitous flx-ido vkill exec-path-from-shell zop-to-char which-key volatile-highlights undo-tree smartrep smartparens smart-mode-line operate-on-number move-text magit projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window)))
 '(pdf-latex-command "~/bin/llatex")
 '(pdf-view-midnight-colors (quote ("#bebebe" . "#171717")))
 '(prelude-whitespace nil)
 '(preview-auto-cache-preamble t)
 '(python-shell-interpreter "python2")
 '(python-shell-interpreter-args "-i")
 '(read-mail-command (quote gnus))
 '(reftex-cite-format (quote natbib))
 '(reftex-plug-into-AUCTeX t)
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(shell-file-name "/bin/bash")
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
 '(tramp-default-method "ssh")
 '(user-mail-address "jesus.rueda@uv.es")
 '(vc-annotate-background "#2B2B2B")
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
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:slant normal :weight normal :height 130 :width normal :family "Ubuntu Mono derivative Powerline"))))
 '(auto-dim-other-buffers-face ((t (:foreground "AntiqueWhite4"))))
 '(fixed-pitch ((t (:inherit default))))
 '(tabbar-default ((t (:inherit variable-pitch :background "gray45" :foreground "grey90" :weight semi-bold :height 0.8))))
 '(variable-pitch ((t (:family "Helvetica")))))

(provide 'custom)
;;; custom.el ends here
