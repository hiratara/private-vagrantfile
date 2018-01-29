(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
;; (package-refresh-contents)

;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

;; black list for intero
;; (setq intero-blacklist '("/path/to/no/intero"))
(add-hook 'haskell-mode-hook 'intero-mode-blacklist)

;; http://superuser.com/questions/349943/how-to-awake-emacs-gui-after-pressing-ctrlz
(global-unset-key (kbd "C-z"))

;; ;; http://yohshiy.blog.fc2.com/blog-entry-273.html
;; (prefer-coding-system 'utf-8)
;; (set-file-name-coding-system 'cp932)
;; (set-keyboard-coding-system 'cp932)
;; (set-terminal-coding-system 'cp932)

(column-number-mode)
(display-time)
(show-paren-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode t)
(global-hl-line-mode t)
;; (global-whitespace-mode 1)

(load-theme 'tsdh-dark t)

(server-start)
