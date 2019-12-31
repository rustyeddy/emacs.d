;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;                  -*- Go Configs -*-
;;
;; ref: http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
;;
;;
;; M-x godoc  ;; read documentation
;;
;; M-x godef-describe
;; M-. godef-jump    
;; M-x godef-jump-other-window
;; M-* return
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Go code reformatted and compiled on every page save
(add-to-list 'exec-path "/Users/rusty/go/bin")

(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
			  "[ \t\n]*$"
			  ""
			  (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))
(when window-system (set-exec-path-from-shell-PATH))

;;; autocomplete 
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'exec-path "/home/rusty/go/bin")
(add-to-list 'exec-path "/snap/go/current/bin")

;; (add-to-list 'load-path "/home/rusty/go/sr

(defun rusty-go-mode-hook()
  
  ;; Use go imports instead of gofmt
  (setq gofmt-command "goimports")

  ;; call go format before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  
  ;; Try to get emacs to _display_ Go with 4 tab stops.  Every save
  ;; will run the code through go-fmt so we don't need to worry about
  ;; performing that task
  (setq tab-width 4)
  (setq indent-tabs-mode 1)

  ;; tag key bindings - uses godef rather than ETAGS
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-/") 'godef-jump-other-window)
  (local-set-key (kbd "M-*") 'pop-tag-mark)

  ;; This should error and if this routing is getting interpretted
  ;; (foo bar)

  ;; go compile, test and vet commands
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
	   "go build -v && go test -v && go vet")))


;;; Compile hook for Go
(add-hook 'go-mode-hook 'rusty-go-mode-hook)

;;; ??? Conflict with rusty-go-mode above?
;; (add-hook 'go-mode-hook (lambda()
;; 			  (local-set-key (kbd "M-.") #'godef-jump)
;; 			  (local-set-key (kbd "M-.") #'godef-jump-other-window)
;; 			  (local-set-key (kbd "M-.") #'pop-tag-mark)))

;; (setenv "GOPATH" "/Users/rusty/go/")
(defun auto-complete-for-go ()
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)
(with-eval-after-load 'go-mode
   (require 'go-autocomplete))

;; --------------  Must be Last -------------
(provide 'go-init)
