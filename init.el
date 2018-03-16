;; Adithya Jay (AJ) EMACS CONFIG Updated: 3-9-2018
;; shoutout my boi brian u a real one
;; --------------------------------------------------------------------


;;                          BASIC CONFIG
;; ---------------------------------------------------------------------

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;SPACEMACS
(setq spacemacs-start-directory "~/.emacs.d/spacemacs/")
(load-file (concat spacemacs-start-directory "init.el"))


(package-initialize)





;; backup all files in one location
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

;; get the bell off
(setq ring-bell-function 'ignore)

;; line numbers constantly
(global-linum-mode t)

;; adding package lists
;(require 'package)
;(add-to-list 'package-archives
; '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; auctex config
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)


;;tabs = 4 spaces
(setq-default indent-tabs-mode nil) ;spaces instead of tabs when indenting
(setq-default tab-width 4) ;4 SPC

;; C Format with k&r
(setq c-set-style "k&r")
(setq c-basic-offset 4)


;; EL-GET
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)


;(require 'solidity-mode)


;; ---------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 ;'(initial-buffer-choice "~/newfile")
 '(package-selected-packages (quote (auctex ## material-theme better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
