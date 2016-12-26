;; Command fire
(global-set-key (kbd "M-x") #'helm-M-x)

;; Find file
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;; Killring
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; Buffers
(global-set-key (kbd "C-x b") 'helm-mini)

;; Help
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(with-eval-after-load 'helm
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  ;; make TAB works in terminal, C-i is tha same as TAB
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action))

;; open helm buffer inside current window, don't occupy the entire other window
(setq helm-split-window-in-side-p t)
;; move to end or beginning of source when reaching top or bottom of source.
(setq helm-move-to-line-cycle-in-source t)

;; Fuzzy matching
;; (setq helm-recentf-fuzzy-match t
;;       helm-locate-fuzzy-match nil ;; locate fuzzy is worthless
;;       helm-M-x-fuzzy-match t
;;       helm-buffers-fuzzy-matching t
;;       helm-semantic-fuzzy-match t
;;       helm-apropos-fuzzy-match t
;;       helm-imenu-fuzzy-match t
;;       helm-lisp-fuzzy-completion t
;;       helm-completion-in-region-fuzzy-match t)

;; Load helm
(require 'helm-config)
(helm-mode 1)

;; Resizing
(helm-autoresize-mode)
;; These numbers are percentages
(setq helm-autoresize-min-height 20
      helm-autoresize-max-height 40)
