;; Set a function key bindings

;;    Global Function Keys
;; -- ================================================================== --

;; f1 => Help (emacs)
(global-set-key (kbd "<f2>") 'split-window-below)
(global-set-key (kbd "S-<f2>") 'split-window-right)
;; f3 => define keyboard macro (emacs)
;; f4 => end define keyboard macro (emacs)
(global-set-key (kbd "<f5>") 'gud-gdb)
(global-set-key (kbd "<f6>") 'compile)
(global-set-key (kbd "<f7>") 'next-error)
(global-set-key (kbd "<f8>") 'previous-error)
(global-set-key (kbd "<f9>") 'other-window)
;; f10 => global menu
;; f11 => MacOS controlled (launchpad)
;; f12 => MacOS controlled (cllear desktop)


;;    Global Control Keys C-
;; -- ================================================================== --
(global-set-key (kbd "C-M-p") 'previous-window)

;; <buffer keymap.el>
;; ^Z gives us a shell buffer ... 
(global-set-key (kbd "C-z") 'shell)

;;    Global Meta M-
;; -- ================================================================== --

(global-set-key (kbd "<M-up>") 'scroll-down-command)
(global-set-key (kbd "<M-down>") 'scroll-up-command)
(global-set-key (kbd "<M-p>") 'other-window)

;;               A-<tab> switches buffers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Switch to buffer other buffer
(defun odderbuffa()
    (interactive)
    (switch-to-buffer (other-buffer)))
(global-set-key (kbd "C-<tab>") 'odderbuffa)

(provide 'keymap)
