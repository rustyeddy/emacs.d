;;; ------------------------- HTML / MD ----------------------------------
;;; Double ensure that html does not get truncated
(add-hook 'html-mode-hook
	  '(lambda ()
	     (toggle-truncate-lines 0)))

;;; Do NOT truncate markdown, auto-fill instead
(add-hook 'markdown-mode-hook
	  '(lambda ()
	     (toggle-truncate-lines 0)
	     (turn-on-auto-fill)))


;; YAML - bring YAML into the fold
;; =========================================================
(require 'yaml-mode)

