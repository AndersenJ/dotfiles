(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it's not

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
	 nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
	   (package-install package)
	 package)))
   packages))

;; Make sure to have downloaded archive description
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; Activate installed packages
(package-initialize)

;; List of packages to install
(ensure-package-installed 'auto-complete
			  'color-theme
              'evil
			  'helm
			  'neotree
			  'paredit
              'rainbow-delimiters
			  'relative-line-numbers
			  'slime
			  'undo-tree)

;; Setup auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; Setup color-theme
(require 'color-theme)
;;(color-theme-bharadwaj-slate)
;;(color-theme-kingsajz)
;;(color-theme-subtle-hacker)

;; Setup evil mode
(require 'evil)
(evil-mode t)

;; Setup paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro-paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

;; Enable rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Enable relative line numbering
(require 'relative-line-numbers)
(global-relative-line-numbers-mode)

;; Setup slime (lisp support)
(setq inferior-lisp-program "/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; Setup undo-tree
(global-undo-tree-mode)

;; Setup user details
(setq user-full-name "Johnathan Andersen")
(setq user-mail-address "andernerd@gmail.com")

;; Get rid of extraneous junk
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Enable system clipboard
(setq x-select-enable-clipboard)

;; Indicate empty lines
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Better interactivity (no dialog boxes, no beeping because I am not a robot)
(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)

;; Highlight parens
(show-paren-mode t)

;; Enable column numbers
(setq column-number-mode t)
