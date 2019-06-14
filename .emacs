
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-enabled-themes (quote (dakrone)))
 '(custom-safe-themes
   (quote
    ("2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "47744f6c8133824bdd104acc4280dbed4b34b85faa05ac2600f716b0226fb3f6" "2eb9ca16f246c23c72780a6f0c5453b8df75524b8ccacf951119e1f0ca6d6064" "748d0e2ffdaf95015a539dcc95ab888283284ad7b076963760422cbe5e21903a" default)))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (dakrone-theme cyberpunk-theme mandm-theme yaml-mode lua-mode gerrit-download magit-gerrit jedi darkburn-theme mustang-theme magit helm-spotify circe xcscope mu4e-maildirs-extension mbsync melancholy-theme auto-complete gited)))
 '(send-mail-function (quote smtpmail-send-it))
 '(vc-annotate-background "#2B2B2B")
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
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

(require 'xcscope)
(cscope-setup)
(define-key global-map [(control f1)]  'cscope-set-initial-directory)
(define-key global-map [(control f2)]  'cscope-unset-initial-directory )
(define-key global-map [(control f3)]  'cscope-find-this-symbol)
(define-key global-map [(control f4)]  'cscope-find-global-definition)
(define-key global-map [(control f5)]  'cscope-find-called-functions)
(define-key global-map [(control f6)]  'cscope-find-functions-calling-this-function)
(define-key global-map [(meta f7)]  'cscope-find-this-text-string)
(define-key global-map [(control f8)]  'cscope-find-this-file)
(define-key global-map [(control f9)]  'cscope-find-files-including-file)
(define-key global-map [(meta f10)] 'cscope-find-assignments-to-this-symbol)
(define-key global-map [(meta f11)] 'cscope-pop-mark)
(define-key global-map [(control f12)] 'cscope-find-egrep-pattern)
;; (define-key global-map [(control f9)]  'cscope-history-forward-line)
;; (define-key global-map [(control f10)] 'cscope-history-forward-file)
;; (define-key global-map [(control f11)] 'cscope-history-backward-line)
;; (define-key global-map [(control f12)] 'cscope-history-backward-file)
;; (define-key global-map [(meta f9)]  'cscope-display-buffer)
;; (define-key global-map [(meta f10)] 'cscope-display-buffer-toggle)


(define-key global-map "\M-*" 'pop-tag-mark)
(global-linum-mode 1)
(setq linum-format "%d ")
(setq column-number-mode t)
(defun setup-c-mode ()
  (set-variable 'indent-tabs-mode t)
  (c-set-offset 'inextern-lang 0))
(add-hook 'c-mode-common-hook 'setup-c-mode)
(setq c-default-style "gnu")
