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
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; use-package to simplify the config file
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)

(setq inhibit-startup-message t)

;; ======================================================================
;; PATHS Add our local elisp directory to the path

;; TODO FIX THIS
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/web-mode")

;; Org Mode
;; ======================================================================
;; (setq org-directory "~/Dropbox/log")
;; (setq org-default-notes-file (concat org-directory "/notes.org"))
;; (setq org-capture-templates
;;       '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
;;          "* TODO %?\n  %i\n  %a")
;;         ("j" "Journal" entry (file+olp+datetree "~/org/journal.org")
;;          "* %?\nEntered on %U\n  %i\n  %a")))

;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cc" 'org-capture)
;; (global-set-key "\C-cb" 'org-switchb)

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

;; ------------------------ CC - Mode ------------------------------------
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "cc-mode")))


;;; -----------------------     Lines     --------------------------------
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;;; Truncate lines by default
(set-default 'truncate-lines t)

;;; Let us get electric pair mod going
(electric-pair-mode)

(setq make-backup-files nil)

;; set my email address
(setq user-mail-address "rusty@rustyeddy.com")

(use-package web-mode
  :custom
  (web-mode-markup-indent-offset 2)
  (web-mode-css-indent-offset 2)
  (web-mode-code-indent-offset 2))

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
 '(custom-safe-themes
   '("95b0bc7b8687101335ebbf770828b641f2befdcf6d3c192243a251ce72ab1692" "42784a3f36d8f5f4c372b16b97407ef6820bf5e5780675f3abc97fe474281513" default))
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(indicate-buffer-boundaries 'left)
 '(line-spacing 3)
 '(package-selected-packages '(html5-schema auto-complete markdown-mode go-mode))
 '(save-place t)
 '(tool-bar-mode nil))

;;; ====================================================================
;;; GDB Mode
;;; ====================================================================
(setq gdb-many-windows nil)
(setq gdb-show-main nil)


