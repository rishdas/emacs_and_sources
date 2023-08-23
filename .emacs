(package-initialize)
;; Package Config
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; Split Screen Config
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

;; Windows special (need Putty installed plink.exe needs to be in PATH)
(setq tramp-default-method "plink")
(set-face-attribute 'default nil :family "Consolas" :height 110)

;; Cscope

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

;; Etags config
(define-key global-map "\M-*" 'pop-tag-mark)

;; Comment Section

(global-set-key (kbd "C-/") 'comment-line)

;; Line number config
(global-linum-mode 1)
(setq linum-format "%d ")
(setq column-number-mode t)

;; C coding Style
(setq-default indent-tabs-mode nil)
(require 'auto-complete)
(global-auto-complete-mode t)
(c-add-style "microsoft"
             '("stroustrup"
	       (c-tab-always-indent . nil)
               (c-offsets-alist
                (innamespace . -)
                (inline-open . 0)
                (inher-cont . c-lineup-multi-inher)
                (template-args-cont . +))))
(setq c-default-style "microsoft")

(require 'clang-format)
(global-set-key (kbd "C-x f") 'clang-format-region)
(setq clang-format-style-option "llvm")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(vs-dark))
 '(custom-safe-themes
   '("cf856c10886059898685bfdba0c2b0e1416562475e8f47d29a60aa10c264d42e" "a1b7ff5791dfc05e0ca4a733dc1d299052d0cd2083084481f232053f1af05013" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "b3697d12fb7c087e1337432be92026b5fd218e7e43277918c0fce680d573a90c" "2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" default))
 '(package-selected-packages
   '(protobuf-mode pcap-mode multiple-cursors rust-mode vs-dark-theme vscdark-theme clang-format helm-gtags ample-theme chocolate-theme omnisharp go-mode yaml-mode elpy ansible auto-complete csharp-mode powershell magit dakrone-theme xcscope)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (setq frame-title-format
;;     '((:eval (if (buffer-file-name)
;;                   (abbreviate-file-name (buffer-file-name))
;;                     "%b"))
;;       (:eval (if (buffer-modified-p) 
;;                  " •"))
;;       " - Emacs")
;;   )
(setq my-username (getenv "USERNAME"))
(setq my-hostname (getenv "COMPUTERNAME"))
(setq my-domainname (getenv "USERDOMAIN"))
(setq my-sysinfo (list " - " my-domainname "\\" my-username "@" my-hostname))

(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))
        (:eval (if (buffer-modified-p) 
                   " •"))
        my-sysinfo)
      )
(global-auto-revert-mode t)
