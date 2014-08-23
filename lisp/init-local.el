;(add-to-list 'load-path "~/.emacs.d/plugins/jade-mode")
;(require 'sws-mode)
;(require 'jade-mode)
;(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
;(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(add-to-list 'load-path
             "~/.emacs.d/plugins/auto-complete/")
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") ;;; 设置比上面截图中更好看的背景颜色
(define-key ac-completing-map "\M-n" 'ac-next)  ;;; 列表中通过按M-n来向下移动
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 2)
(setq ac-dwim t)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(put 'upcase-region 'disabled nil)

(add-to-list 'load-path "~/.emacs.d/plugins/ac-coffee/")
(require 'ac-coffee)
(add-to-list 'load-path "~/.emacs.d/plugins/tree/")
(require 'dirtree)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(global-set-key (kbd "C-M-g") 'goto-line)

;(add-to-list 'load-path
;              "~/.emacs.d/plugins/yasnippet/")
;(require 'yasnippet)
;(yas-global-mode 1)

;(add-to-list 'yas/root-directory "~/.emacs.d/plugins/yasnippet-snippets")
;(yas/initialize)
;(set-variable 'tab-width 4)
;(set-variable 'coffee-tab-width 4)

;set font

(defun set-font-courier ()
  (interactive)
  (set-default-font "-apple-Courier_New-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
  )
(defun set-font-Kaiti ()
  (interactive)
  (set-default-font "-apple-STKaiti-medium-normal-normal-*-15-*-*-*-p-0-iso10646-1")
  )

(set-default-font "-apple-Courier_New-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
;(set-default-font "-apple-STKaiti-medium-normal-normal-*-15-*-*-*-p-0-iso10646-1" )
;(set-face-attribute 'default nil :height 140)
(global-set-key (kbd "C-c k") 'set-font-Kaiti)
(global-set-key (kbd "C-c c") 'set-font-courier)


(global-set-key (kbd "C-M-=") 'sanityinc/increase-default-font-height)
(global-set-key (kbd "C-M-t") 'dirtree)
(global-set-key (kbd "C-M-r") 'tree-mode-reflesh)

(global-set-key (kbd "M-W") 'ido-copy-current-word)


(provide 'init-local)
