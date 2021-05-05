;; load emacs 24's package system. Add MELPA repository.

;;;
;;; TODO
;;;
;;; - Set Keys to compile, fix bugs and debug go code
;;; - Set Keys to run go test

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; ************************* Package ************************************
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  )
(package-initialize)

;; ======================================================================
;; PATHS Add our local elisp directory to the path

;; TODO FIX THIS
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/web-mode")

;; Org Mode
;; ======================================================================
(setq org-directory "~/Dropbox/log")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+olp+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

;; --------------------- Mac Meta/Option Keys --------------------------
;; I prefer cmd key for meta. This is just set in emacs
;; ONLY on a MAC
;;
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

;;; -------------------- Decent Looking Theme ----------------------------
;;; Added railscasts mode
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;; load rails casts 
(load-theme 'railscasts-reloaded t)

;;; ---------------------- ORG MODE -----------------------------------
(setq org-log-done 'time)
(setq org-directory "~/org")
(setq org-default-notes-file (concat org-directory "/log/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

;;; -----------------------     Lines     --------------------------------
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;;; Truncate lines by default
(set-default 'truncate-lines nil)

;;; Let us get electric pair mod going
(electric-pair-mode)

;; set my email address
(setq user-mail-address "rusty@rustyeddy.com")

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; all these can be found in ./elisp 
(require 'yaml-mode)
(require 'go-init)
(require 'go-dlv)
(require 'go-guru)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.gotmpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(setq-default indent-tabs-mode nil)

(require 'style)
(require 'keymap)
(require 'lua)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-battery-mode t)
 '(display-time-mode t)
 '(indicate-buffer-boundaries (quote left))
 '(line-spacing 1)
 '(package-selected-packages
   (quote
    (exec-path-from-shell html5-schema auto-complete go-mode)))
   (quote
    (web-mode yaml-mode html5-schema markdown-mode go-mode)))
 '(save-place t)
 '(tool-bar-mode nil)

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:height 130)))))
(put 'set-goal-column 'disabled nil)

;;; ====================================================================
;;; GDB Mode
;;; ====================================================================
(setq gdb-many-windows nil)
(setq gdb-show-main nil)


