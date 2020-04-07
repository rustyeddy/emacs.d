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
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives
	       '("melpa" . "http://stable.melpa.org/packages/"))
  (package-initialize))

;; ======================================================================
;; PATHS Add our local elisp directory to the path

;; TODO FIX THIS
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Org Mode
;; ======================================================================
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)


;; --------------------- Mac Meta/Option Keys --------------------------
;; I prefer cmd key for meta. This is just set in emacs
;; ONLY on a MAC
;;
;; (setq mac-option-key-is-meta nil
;;       mac-command-key-is-meta t
;;       mac-command-modifier 'meta
;;       mac-option-modifier 'none)
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
;;; Turn on linum mode - give linum a little extra gutter space
;; (setq linum-format " %3d ")
;; (linum-mode 1)
;; (global-linum-mode 1)
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;;; Truncate lines by default
(set-default 'truncate-lines t)

;; Read Abbrevs BORKED
;; (quietly-read-abbrev-file (file "abbrev_defs"))

;;; Setup Emacs Server
(server-start)

;; set my email address
(setq user-mail-address "rusty@rustyeddy.com")

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; all these can be found in ./elisp 
(require 'modes)
(require 'go-init)
(require 'go-dlv)
(require 'go-guru)
(require 'web-mode)
(require 'style)
(require 'keymap)
(require 'lua)
