;;; custom.el --- Summary
;;; Commentary:
;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex -synctex=1")
 '(TeX-PDF-via-dvips-ps2pdf t)
 '(auto-dim-other-buffers-mode t)
 '(backup-directory-alist (quote ((".*" . "/Users/jesus/.ebackups/"))))
 '(calendar-date-style (quote european))
 '(compilation-message-face (quote default))
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(f90-mode-hook (quote (f90-add-imenu-menu abbrev-mode auto-fill-mode)))
 '(f90-program-indent 0)
 '(fill-column 75)
 '(font-latex-fontify-script nil)
 '(fortran-line-length 1000)
 '(indicate-empty-lines t)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(package-selected-packages
   (quote
    (neotree tabbar auto-dim-other-buffers geiser json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company smex ido-completing-read+ flx-ido vkill exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree smartrep smartparens smart-mode-line operate-on-number move-text magit projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window)))
 '(prelude-whitespace nil)
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--simple-prompt -i --automagic")
 '(scroll-bar-mode nil)
 '(show-paren-style (quote mixed))
 '(tabbar-mode t nil (tabbar))
 '(tabbar-use-images nil)
 '(tramp-default-method "sshx")
 '(user-mail-address "jesus.rueda@uv.es"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-dim-other-buffers-face ((t (:foreground "AntiqueWhite4")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;;---------------------------------------------------------------------
;; Start Server
;;---------------------------------------------------------------------
(server-start)

;; define function to shutdown emacs server instance
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )
;;; custom.el ends here
