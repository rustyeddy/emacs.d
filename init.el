;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; First make everything look pretty
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'railscasts-reloaded t)

;; setup line numbers on every buffer
(global-display-line-numbers-mode)

;;; Let us get electric pair mod going
(electric-pair-mode)

;; Do not litter the directory with ~ files.
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

(add-hook 'go-mode-hook
  (lambda ()
    (setq-default)
    (setq tab-width 4)
    (setq standard-indent 4)
    (setq indent-tabs-mode nil)))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom Keymaps
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "<C-tab>")  'mode-line-other-buffer)
(global-set-key (kbd "<f2>") 'split-window-below)
(global-set-key (kbd "S-<f2>") 'split-window-right)

(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'gdb)
(global-set-key (kbd "S-<f6>") 'dlv)

(global-set-key (kbd "<f7>") 'next-error)
(global-set-key (kbd "<f8>") 'previous-error)
(global-set-key (kbd "<f9>") 'other-window)

(global-set-key (kbd "<M-up>") 'scroll-down-command)
(global-set-key (kbd "<M-down>") 'scroll-up-command)
(global-set-key (kbd "<M-p>") 'other-window)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Easy font sizes
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun font10()
  (interactive)
  (custom-set-faces '(default ((t (:height 100))))))
(defun font11()
  (interactive)
  (custom-set-faces '(default ((t (:height 110))))))
(defun font12()
  (interactive)
  (custom-set-faces '(default ((t (:height 120))))))
(defun font13()
  (interactive)
  (custom-set-faces '(default ((t (:height 130))))))
(defun font14()
  (interactive)
  (custom-set-faces '(default ((t (:height 140))))))
(defun font15()
  (interactive)
  (custom-set-faces '(default ((t (:height 150))))))
(defun font16()
  (interactive)
  (custom-set-faces '(default ((t (:height 160))))))
(defun font17()
  (interactive)
  (custom-set-faces '(default ((t (:height 170))))))
(defun font18()
  (interactive)
  (custom-set-faces '(default ((t (:height 180))))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tree sitter stuff
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq treesit-language-source-alist
   '((bash "https://github.com/tree-sitter/tree-sitter-bash")
     (cmake "https://github.com/uyha/tree-sitter-cmake")
     (css "https://github.com/tree-sitter/tree-sitter-css")
     (elisp "https://github.com/Wilfred/tree-sitter-elisp")
     (go "https://github.com/tree-sitter/tree-sitter-go")
     (html "https://github.com/tree-sitter/tree-sitter-html")
     (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
     (json "https://github.com/tree-sitter/tree-sitter-json")
     (make "https://github.com/alemuller/tree-sitter-make")
     (markdown "https://github.com/ikatyang/tree-sitter-markdown")
     (python "https://github.com/tree-sitter/tree-sitter-python")
     (toml "https://github.com/tree-sitter/tree-sitter-toml")
     (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
     (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
     (yaml "https://github.com/ikatyang/tree-sitter-yaml")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("95b0bc7b8687101335ebbf770828b641f2befdcf6d3c192243a251ce72ab1692" "42784a3f36d8f5f4c372b16b97407ef6820bf5e5780675f3abc97fe474281513" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(indicate-buffer-boundaries 'left)
 '(line-spacing 3)
 '(package-selected-packages
   '(php-mode go-guru go html5-schema auto-complete markdown-mode go-mode))
 '(save-place t)
 '(tool-bar-mode nil))

;;; ====================================================================
;;; GDB Mode
;;; ====================================================================
(setq gdb-many-windows nil)
(setq gdb-show-main nil)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Liberation Mono" :foundry "1ASC" :slant normal :weight normal :height 120 :width normal)))))
