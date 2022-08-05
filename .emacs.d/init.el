;; init.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(defvar my-packages 
  '(better-defaults
    material-theme
    elpy))
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      my-packages)
(setq inhibit-startup-message t)
(load-theme 'material t)
(global-linum-mode t)

;; elpy
(elpy-enable)

;; use iython as shell
(setq python-shell-interpreter "ipython"
      ython-shell-interpreter-args "-i --simple-prompt")

;; set pyvenv-workon start point
(setenv "WORKON_HOME" (concat (getenv "ORIG_HOME") "miniconda3/envs"))

;; reset the HOME to the real one!
(setenv "HOME" (getenv "ORIG_HOME"))

;; $ sudo at install python3-pip
;; $ pip3 install jedi autopep8 flake8 ipython importmagic yapf
;; M-x pyvenv-workon



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(elpy material-theme better-defaults)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
