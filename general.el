;;; general.el --- General kwojt's setting for emacs
;;  Copyright (C) 2017 kwojt

;;; Commentary:
;; No comments.  Just use it.  Flycheck requires it, that's
;; why it's here.

;;; Code:
;; GUI settings
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Indentation settings
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)

;; Enable global Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Enable global Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Insert newline on the end of the file on save
(setq-default require-final-newline t)

;; Ace-window
(global-set-key (kbd "M-p") 'ace-window)

;; Electric-pair-mode always on
(electric-pair-mode 1)

;; Folding
(add-hook 'prog-mode-hook 'hs-minor-mode)
(global-set-key (kbd "<backtab>") 'fold-dwim-toggle)
;;(global-set-key (kbd "<M-f7>")    'fold-dwim-hide-all)
;;(global-set-key (kbd "<S-M-f7>")  'fold-dwim-show-all)

;; *compilation* is special buffer now,
;; it opens in a new window
(setq special-display-buffer-names
      '("*compilation*"))
(setq special-display-function
      (lambda (buffer &optional args)
        (split-window)
        (switch-to-buffer buffer)
        (get-buffer-window buffer 0)))

;; Auto-close succesful compilation window
(setq compilation-finish-function
  (lambda (buf str)
    (if (null (string-match ".*exited abnormally.*" str))
        ;;no errors, make the compilation window go away in a few seconds
        (progn
          (run-at-time
           "2 sec" nil 'delete-windows-on
           (get-buffer-create "*compilation*"))
          (message "No Compilation Errors!")))))

;; ZSH script opens in sh-mode
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))

;; Global company-mode
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.1)

;; Revert without confirmation
;; Source: http://www.emacswiki.org/emacs-en/download/misc-cmds.el
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))
