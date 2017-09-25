;;; ng2-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ng2-html" "ng2-html.el" (22984 65364 543189
;;;;;;  306000))
;;; Generated autoloads from ng2-html.el

(autoload 'ng2-html-mode "ng2-html" "\
Major mode for Angular 2 templates

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.component.html\\'" . ng2-html-mode))

;;;***

;;;### (autoloads nil "ng2-mode" "ng2-mode.el" (22984 65364 619187
;;;;;;  519000))
;;; Generated autoloads from ng2-mode.el

(autoload 'ng2-mode "ng2-mode" "\
Activates the appropriate Angular 2-related mode for the buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "ng2-ts" "ng2-ts.el" (22984 65364 499190 340000))
;;; Generated autoloads from ng2-ts.el

(autoload 'ng2-ts-mode "ng2-ts" "\
Major mode for Angular 2 TypeScript

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.component.ts\\'" . ng2-ts-mode))

(add-to-list 'auto-mode-alist '("\\.service.ts\\'" . ng2-ts-mode))

;;;***

;;;### (autoloads nil nil ("ng2-mode-pkg.el") (22984 65364 687185
;;;;;;  920000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ng2-mode-autoloads.el ends here
