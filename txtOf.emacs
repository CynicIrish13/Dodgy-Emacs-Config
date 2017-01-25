(setq initial-scratch-message"Comp Needs Done")
(setq inhibit-startup-message t)

(setq visible-bell t)

(setq inhibit-startup-echo-area-message "guerry")

(scroll-bar-mode 0)

(tool-bar-mode 0)
(menu-bar-mode 0)

(custom-set-faces
  '(default ((t (:background "black" :foreground "violet"))))
  '(fringe ((t (:background "black")))))


(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(global-linum-mode t)




(require 'package)
(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme))

(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(package-initialize)
(elpy-enable)


(elpy-enable)


(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)


