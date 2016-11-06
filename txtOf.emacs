


(fset 'type-./a.out
      "time ./a.out"
      )

(global-set-key (kbd"C-z") 'type-./a.out)


(autoload 'vbnet-mode "vbnet-mode" "Mode for editing VB.NET code." t)
(setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\|vb\\)$" . vbnet-mode)) auto-mode-alist))

(fset 'c-libaries
"
#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <float.h>
#include <limits.h>
#include <locale.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
"
)


(fset 'start-c
"#include <stdio.h>

void main() {

}" )

(global-set-key (kbd "C-c n") 'start-c);

(global-set-key (kbd "<f7>") 'calendar)

(setq initial-scratch-message "Right Mate")
(setq inhibit-startup-message t)

(setq visible-bell t)

(setq inhibit-startup-echo-area-message "guerry")
(toggle-frame-fullscreen)
(scroll-bar-mode 0)

(tool-bar-mode 0)
(menu-bar-mode 0)

(custom-set-faces
  '(default ((t (:background "black" :foreground "violet"))))
  '(fringe ((t (:background "black")))))

(fset 'follow-link
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([119 134217848 101 119 119 return 25 return] 0 "%d")) arg)))

(global-set-key (kbd "C-c f") 'follow-link)
 


(defun execute-c-program ()
  (interactive)
  (defvar foo)
  (defvar index)
  (setq index 1)
  (setq foo (concat "gcc " (buffer-name) " -lm" ))
  (compile foo)
  (shell)
  )
(global-set-key (kbd "<f1><f2>") 'execute-c-program)
