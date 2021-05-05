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
 '(package-selected-packages (quote (html5-schema auto-complete markdown-mode go-mode)))
 '(save-place t)
 '(tool-bar-mode nil))

;; better to prompt for size ...
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

(provide 'style)
