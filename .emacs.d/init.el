;;; init.el --- example Initialization File
;;
;; Copyright (c) 2017 Eugene Yaremenko
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Demonstrate a package installation with a Dockerfile

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))
(add-hook 'after-init-hook (lambda () (load-theme 'spacemacs-dark t)))
