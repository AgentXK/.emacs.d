(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;; basic settings
(tool-bar-mode -1)
(electric-pair-mode t)
(global-auto-revert-mode t)
(delete-selection-mode t)
(recentf-mode t)
(setq make-backup-files nil)
(setq visible-bell 0)

;; custom.el
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)

;; packages
(use-package ivy
  :ensure t
  :hook (after-init . ivy-mode)
  :custom (ivy-use-virtual-buffers t
           ivy-count-format "(%d/%d) ")
  :bind ("C-x b" . 'ivy-switch-buffer))

(use-package swiper
  :ensure t
  :after ivy
  :bind (("C-s" . swiper-isearch)
	 ("C-r" . swiper-isearch-backward)))

(use-package counsel
  :ensure t
  :after ivy
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("M-y" . counsel-yank-pop)))

(use-package corfu
  :ensure t
  :custom ((corfu-auto t)
	   (corfu-auto-prefix 2))
  :init (global-corfu-mode))

