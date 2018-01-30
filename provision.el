(require 'package)

; find package information from following archives
(setq package-archives '(("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(package-refresh-contents)

(mapcar (lambda (package)
          ; install package if not already installed
          (unless (package-installed-p package)
            (package-install package)))

        ; list of packages to be installed
        '(open-junk-file
          intero
          markdown-mode
          markdown-mode+
          yaml-mode
          projectile
          helm
          helm-projectile))
