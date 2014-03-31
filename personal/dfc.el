;; Emacs resources:
;; from: https://raw.githubusercontent.com/avar/dotemacs/master/.emacs
;; http://web.archive.org/web/20111127230153/http://stackoverflow.com/questions/60367/the-single-most-useful-emacs-feature
;; http://news.ycombinator.com/item?id=3320198
;; 


 

;;(prelude-require-packages '(markdown-mode smartparens))
(prelude-require-packages '(markdown-mode writegood-mode smartparens pandoc-mode rst writegood-mode ess undo-tree))




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



(require 'undo-tree)
(global-undo-tree-mode 1)
