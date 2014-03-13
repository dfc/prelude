;; 
(setq gc-cons-threshold 8000000)
(setq  garbage-collection-messages t)

;;(prelude-require-packages '(markdown-mode smartparens))
(prelude-require-packages '(markdown-mode writegood-mode smartparens pandoc-mode rst writegood-mode ess))




(require 'smartparens-config)

(setq guru-warn-only t)


(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdwn\\'" . markdown-mode))

(add-hook 'markdown-mode-hook 'turn-on-visual-line-mode) ;; sane text handling for markdown
(add-hook 'markdown-mode-hook 'turn-on-smartparens-mode) ;; sane text handling for markdown


(require 'ess-site)

(require 'rst)

(setq auto-mode-alist
      (append '(("\\.rst\\'" . rst-mode)
                ("\\.rest\\'" . rst-mode)) auto-mode-alist))



(require 'writegood-mode)
(global-set-key "\C-cg" 'writegood-mode)


