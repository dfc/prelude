(prelude-require-packages '(markdown-mode smartparens))

(require 'smartparens-config)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdwn\\'" . markdown-mode))

(add-hook 'markdown-mode-hook 'turn-on-visual-line-mode) ;; sane text handling for markdown
(add-hook 'markdown-mode-hook 'turn-on-smartparens-mode) ;; sane text handling for markdown
