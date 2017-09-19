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
 '(package-selected-packages
   (quote
    (zop-to-char zenburn-theme which-key web-mode volatile-highlights vkill undo-tree tabbar smex smartrep smartparens smart-mode-line rainbow-mode rainbow-delimiters ov org-projectile operate-on-number move-text magit json-mode js2-mode imenu-anywhere helm-projectile guru-mode grizzl god-mode gnuplot-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck flx-ido expand-region exec-path-from-shell elisp-slime-nav editorconfig easy-kill discover-my-major diminish diff-hl crux company-auctex company-anaconda cdlatex browse-kill-ring beacon anzu ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (provide 'custom)

(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)
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

;;; custom.el ends here
