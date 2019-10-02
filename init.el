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
(package-initialize)

;; ************************* Package ************************************
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   ;; '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;; ======================================================================
;; PATHS Add our local elisp directory to the path
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; --------------------- Mac Meta/Option Keys --------------------------
;;; I prefer cmd key for meta. This is just set in emacs
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

;;; -------------------- Decent Looking Theme ----------------------------
;;; Added railscasts mode
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;; load rails casts 
(load-theme 'railscasts-reloaded t)

;;; -----------------------     Lines     --------------------------------
;;; Turn on linum mode - give linum a little extra gutter space
(setq linum-format " %3d ")
(linum-mode 1)
(global-linum-mode 1)

;;; Truncate lines by default
(set-default 'truncate-lines t)

;; Read Abbrevs BORKED
;; (quietly-read-abbrev-file (file "abbrev_defs"))

;;; Setup Emacs Server
(server-start)

;; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; all these can be found in ./elisp 
(require 'modes)
(require 'go-init)
(require 'go-guru)
(require 'style)
(require 'keymap)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("95b0bc7b8687101335ebbf770828b641f2befdcf6d3c192243a251ce72ab1692" "42784a3f36d8f5f4c372b16b97407ef6820bf5e5780675f3abc97fe474281513" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(indicate-buffer-boundaries (quote left))
 '(line-spacing 3)
 '(newsticker-url-list
   (quote
    (("Golang Jobs" "https://www.upwork.com/ab/feed/jobs/atom?q=golang&sort=renew_time_int+desc&paging=0%3B50&api_params=1&securityToken=ba0269fd960c4f46bfea89a70a5f2a59027a32370bc447c3464c7e4e5988f76d92abed6aa082959c7034a3a70bc0fe7046a37e9d4ad29115274c9d649ccd11ff&userUid=424141852298690560&orgUid=424141852302884865" nil nil nil)
     ("UP ~ Arduino" "https://www.upwork.com/ab/feed/topics/atom?q=arduino&securityToken=ba0269fd960c4f46bfea89a70a5f2a59027a32370bc447c3464c7e4e5988f76d92abed6aa082959c7034a3a70bc0fe7046a37e9d4ad29115274c9d649ccd11ff&userUid=424141852298690560&orgUid=424141852302884865&sort=local_jobs_on_top&topic=3904380" nil nil nil))))
 '(package-selected-packages
   (quote
    (csv-mode notes-mode html5-schema auto-complete markdown-mode go-mode)))
 '(save-place t)
 '(send-mail-function (quote mailclient-send-it))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 156 :inherit nil :stipple nil :background "#232323" :foreground "#E6E1DC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal :foundry "nil" :family "Menlo")))))
