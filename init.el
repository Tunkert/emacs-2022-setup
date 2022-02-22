;; turn off package deprecated warning
(setq byte-compile-warnings '(cl-functions))

;; inhibit splash screen
(setq inhibit-splash-screen t)

;; set default font and size
(set-face-attribute 'default nil :font "Cousine-11" )

;; maximize screen on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; auto-closing pairs
(electric-pair-mode 1)

;; no backup files
(setq make-backup-files nil)

;; set indent for html to 4 spaces
(setq sgml-basic-offset 4)

;; hide status bar
(setq-default mode-line-format nil)

;; set theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'vscode-dark-plus t)

;; add packages
(add-to-list 'load-path "~/.emacs.d/packages")
(require 'emmet-mode)

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-engines-alist '(("php" . "\\.html\\'")))
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#21252B" "#E06C75" "#98C379" "#E5C07B" "#61AFEF" "#C678DD" "#56B6C2" "#ABB2BF"])
 '(custom-safe-themes
   '("b78c48f854df7645367f8a2476d3d25530a8693c243267f3c6a13c2a3c22ba5b" default))
 '(fci-rule-color "#3E4451")
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
