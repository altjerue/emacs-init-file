;;; custom.el --- Summary
;;; Commentary:
;;; Code:

;; Start server
;;(server-start)

;; ------------------------------  Org Mode --------------------------------
;;
;; --> Org-projectile
(require 'org-projectile)
(org-projectile:prompt)
(add-to-list 'org-capture-templates
             (org-projectile:project-todo-entry "l" "* TODO %? %a\n" "Linked Project TODO"))
(add-to-list 'org-capture-templates
             (org-projectile:project-todo-entry "t" "* TODO %? \n" "Simple TODO entry"))
(add-to-list 'org-capture-templates
             (org-projectile:project-todo-entry "p"))
(setq org-confirm-elisp-link-function nil)
(setq org-agenda-files (append org-agenda-files (org-projectile:todo-files)))
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c M-c") 'org-projectile:project-todo-completing-read)

;; --> Org Mobile


(require 'nnir)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-via-dvips-ps2pdf t)
 '(TeX-auto-save t)
 '(TeX-command-list
   (quote
    (("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %(extraopts) %`%S%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t t :help "Generate PostScript file")
     ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil t :help "Convert DVI file to PostScript")
     ("Dvipdfmx" "dvipdfmx %d" TeX-run-dvipdfmx nil t :help "Convert DVI file to PDF with dvipdfmx")
     ("Ps2pdf" "ps2pdf -dAutoRotatePages=/None %f" TeX-run-ps2pdf nil t :help "Convert PostScript file to PDF")
     ("Glossaries" "makeglossaries %s" TeX-run-command nil t :help "Run makeglossaries to create glossary file")
     ("Index" "makeindex %s" TeX-run-index nil t :help "Run makeindex to create index file")
     ("upMendex" "upmendex %s" TeX-run-index t t :help "Run mendex to create index file")
     ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(TeX-master nil)
 '(TeX-parse-self t)
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-list
   (quote
    (("DVI Viewer" "open %o")
     ("PDF Tools" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")
     ("HTML Viewer" "open %o"))))
 '(TeX-view-program-selection
   (quote
    ((output-dvi "DVI Viewer")
     (output-pdf "PDF Tools")
     (output-html "HTML Viewer"))))
 '(alert-default-style (quote notifier))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(auth-source-save-behavior nil)
 '(auto-dim-other-buffers-mode t)
 '(backup-directory-alist (quote ((".*" . "/Users/jesus/.ebackups/"))))
 '(blink-cursor-mode nil)
 '(calendar-date-style (quote european))
 '(column-number-mode t)
 '(compilation-always-kill t)
 '(compilation-message-face (quote default))
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (smart-mode-line-light)))
 '(custom-safe-themes
   (quote
    ("ad9747dc51ca23d1c1382fa9bd5d76e958a5bfe179784989a6a666fe801aadf2" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "2997ecd20f07b99259bddba648555335ffb7a7d908d8d3e6660ecbec415f6b95" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "807a7f4c2d0d331fc1798e6d38b890ce3582096b8d622ba3b491b2aa4345e962" "f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" default)))
 '(custom-theme-allow-multiple-selections t)
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
 '(org-agenda-files
   (quote
    ("~/lab/software/Python/MachineLearning2017/ML_todo.org")))
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
    (pdf-tools solarized-theme leuven-theme company-jedi company-math company-auctex company-anaconda neotree magit magit-popup which-key realgud org-projectile org-password-manager org-mobile-sync visual-regexp org-pdfview fill-column-indicator bbdb-vcard alert offlineimap latex-preview-pane gnuplot-mode ein markdown-mode htmlize julia-mode julia-shell ob-swift tabbar org2blog auto-dim-other-buffers auctex geiser json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters smex ido-ubiquitous flx-ido vkill exec-path-from-shell zop-to-char volatile-highlights undo-tree smartrep smart-mode-line operate-on-number move-text projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window)))
 '(pdf-latex-command "~/bin/llatex")
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(prelude-whitespace nil)
 '(python-shell-interpreter "ipython2")
 '(python-shell-interpreter-args "--simple-prompt -i --automagic")
 '(reftex-cite-format (quote natbib))
 '(reftex-load-hook (quote (imenu-add-menubar-index)))
 '(reftex-mode-hook (quote (imenu-add-menubar-index)))
 '(reftex-plug-into-AUCTeX t)
 '(scroll-bar-mode nil)
 '(shell-file-name "/bin/bash")
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(solarized-use-variable-pitch nil)
 '(tabbar-mode t nil (tabbar))
 '(tabbar-mwheel-mode t nil (tabbar))
 '(tabbar-use-images nil)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
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
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-dim-other-buffers-face ((t (:foreground "AntiqueWhite4"))))
 '(tabbar-default ((t (:inherit variable-pitch :background "gray45" :foreground "grey90" :weight semi-bold :height 0.8)))))

;; (provide 'custom)

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
