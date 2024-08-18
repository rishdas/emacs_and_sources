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

;; Bind C-c a to move to the beginning of the buffer
(global-set-key (kbd "C-c a") 'beginning-of-buffer)

;; Bind C-c e to move to the end of the buffer
(global-set-key (kbd "C-c e") 'end-of-buffer)

;; (global-set-key (kbd "C-x C-b") 'ibuffer)
;; MacOS Overrides
(global-set-key (kbd "<end>") 'move-end-of-line)
;; (setq mac-command-modifier 'meta)
(set-frame-font "menlo 12" nil t)

(setq frame-title-format "%f")

;; Windows special (need Putty installed plink.exe needs to be in PATH)
;; (setq tramp-default-method "plink")

;; Cscope

(require 'xcscope)
(cscope-setup)
(define-key global-map (kbd "C-x <f1>")  'cscope-set-initial-directory)
(define-key global-map (kbd "C-x <f2>")  'cscope-unset-initial-directory )
(define-key global-map (kbd "C-x <f3>")  'cscope-find-this-symbol)
(define-key global-map (kbd "C-x <f4>")  'cscope-find-global-definition)
(define-key global-map (kbd "C-x <f5>")  'cscope-find-called-functions)
(define-key global-map (kbd "C-x <f6>")  'cscope-find-functions-calling-this-function)
(define-key global-map (kbd "C-x M-<f7>")  'cscope-find-this-text-string)
(define-key global-map (kbd "C-x <f8>")  'cscope-find-this-file)
(define-key global-map (kbd "C-x <f9>")  'cscope-find-files-including-file)
(define-key global-map (kbd "C-x M-<f10>") 'cscope-find-assignments-to-this-symbol)
(define-key global-map (kbd "C-x M-*") 'cscope-pop-mark)
(define-key global-map (kbd "C-x <f12>") 'cscope-find-egrep-pattern)

;; (require 'xcscope)
;; (cscope-setup)
;; (define-key global-map [(control f1)]  'cscope-set-initial-directory)
;; (define-key global-map [(control f2)]  'cscope-unset-initial-directory )
;; (define-key global-map [(control f3)]  'cscope-find-this-symbol)
;; (define-key global-map [(control f4)]  'cscope-find-global-definition)
;; (define-key global-map [(control f5)]  'cscope-find-called-functions)
;; (define-key global-map [(control f6)]  'cscope-find-functions-calling-this-function)
;; (define-key global-map [(meta f7)]  'cscope-find-this-text-string)
;; (define-key global-map [(control f8)]  'cscope-find-this-file)
;; (define-key global-map [(control f9)]  'cscope-find-files-including-file)
;; (define-key global-map [(meta f10)] 'cscope-find-assignments-to-this-symbol)
;; (define-key global-map [(meta f11)] 'cscope-pop-mark)
;; (define-key global-map [(control f12)] 'cscope-find-egrep-pattern)


;; Prompt before exit

(setq confirm-kill-emacs 'yes-or-no-p)

;; Etags config
(define-key global-map "\M-*" 'pop-tag-mark)

;; Comment Section
(global-set-key (kbd "C-x c") 'comment-line)

;; Line number config
(global-display-line-numbers-mode)
(setq column-number-mode t)

;; Line Wrapping mode
(global-visual-line-mode 1)

;; C coding Style
(setq-default indent-tabs-mode nil)
(require 'auto-complete)
(global-auto-complete-mode t)
(setq c-default-style "stroustrup")
(setq-default c-basic-offset 2)
(setq-default show-trailing-whitespace t)
;; (setq c-default-style "linux")
;; (require 'clang-format)
;; (global-set-key (kbd "C-x f") 'clang-format-region)
;; (setq clang-format-style-option "llvm")
(global-auto-revert-mode t)
;;((c-mode (mode . astyle-format-on-save)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8f19727c938fd329cb4bcf413103db22930ca503f9ceedfd2eaeeced0d4eb700" "7d1c7ea4f3e73402f012b7011fc4be389597922fa67ad4ec417816971bca6f9d" "ccdc42b444da0b62c25850da75f59186319ee22ddfd153ffc9f7eb4e59652fc9" "a643ad8cf1c443a432ed5c370b96dbd493e95dddc9d82ec83eaddcb0276d4162" "5283a0c77cc7640fc28493cfdf8957b11e1c72af846d96f5e5a6a37432264c34" "49cd634a5d2e294c281348ce933d2f17c19531998a262cbdbe763ef2fb41846b" "cf856c10886059898685bfdba0c2b0e1416562475e8f47d29a60aa10c264d42e" "a1b7ff5791dfc05e0ca4a733dc1d299052d0cd2083084481f232053f1af05013" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "b3697d12fb7c087e1337432be92026b5fd218e7e43277918c0fce680d573a90c" "2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" default))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(clues-theme astyle slurm-mode jupyter cuda-mode treemacs projectile helm flymd markdown-mode gh-md terraform-doc terraform-mode adwaita-dark-theme abyss-theme spacemacs-theme gruber-darker-theme the-matrix-theme lush-theme gore-mode go-complete flymake-go flycheck-golangci-lint bash-completion ansible-doc flymake-hadolint dockerfile-mode flymake-python-pyflakes flycheck-yamllint flycheck k8s-mode dirtree yaml jedi gotham-theme dired-explorer dired-git github-dark-vscode-theme protobuf-mode pcap-mode multiple-cursors rust-mode vs-dark-theme vscdark-theme clang-format helm-gtags ample-theme chocolate-theme omnisharp go-mode yaml-mode elpy ansible auto-complete csharp-mode powershell magit dakrone-theme xcscope)))

;; YAML Mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.template\\'" . yaml-mode))

(require 'json-mode)
(add-to-list 'auto-mode-alist '("\\.tfstate\\'" . json-mode))

;; FlyCheck Mode
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'dockerfile-mode-hook #'flymake-hadolint-setup)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Python
(elpy-enable)
(global-set-key (kbd "C-x j") 'imenu)
(add-hook 'python-mode-hook (lambda () (auto-complete-mode -1)))

;; Terminal

(add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd "C-x") nil)
            (define-key term-raw-map (kbd "C-x C-f") 'term-send-raw)))

;; (add-hook 'term-mode-hook
;;           (lambda ()
;;             (define-key term-raw-map (kbd "C-c b") 'switch-to-buffer)
;;             (define-key term-raw-map (kbd "C-x <up>") 'windmove-up)
;;             (define-key term-raw-map (kbd "C-x <down>") 'windmove-down)
;;             (define-key term-raw-map (kbd "C-x <left>") 'windmove-left)
;;             (define-key term-raw-map (kbd "C-x <right>") 'windmove-right)
;;             ))
