;; GUI settings
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Indentation settings
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

;; Ace-window
(global-set-key (kbd "M-p") 'ace-window)

;; Electric-pair-mode always on
(electric-pair-mode 1)

;; Folding
(add-hook 'prog-mode-hook 'hs-minor-mode)
(global-set-key (kbd "<backtab>") 'fold-dwim-toggle)
;;(global-set-key (kbd "<M-f7>")    'fold-dwim-hide-all)
;;(global-set-key (kbd "<S-M-f7>")  'fold-dwim-show-all)


