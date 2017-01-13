
; no start-up massage
(setq inhibit-startup-message t)

; emacs
(load-theme 'deeper-blue t)

; use C-h as Backspace
(keyboard-translate ?\C-h ?\C-?)

; input Backslash with Yen Key
(define-key global-map [?¥] [?\\])

; make no backup files
(setq make-backup-files nil)
;(setq auto-save-default nil)

; start package.el with emacs
(require 'package)
; add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
; initialize package.el
(package-initialize)

; start auto-complete with emacs
(require 'auto-complete-config)
; do default config or auto-complete
(require 'auto-complete-config)
(ac-config-default)

; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.3.0/include")
  (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1")
  (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.3.0/include")
  (add-to-list 'achead:include-directories '" /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include")
  (add-to-list 'achead:include-directories '" /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/include"))

; now let's call this function from c/c++ hooks
(add-hook 'c++mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

; fix iedit bug in Mac
(define-key global-map (kbd "C-c ;") 'iedit-mode)

; start flymake-google-cpplint-load
; let's define a function for flymake initialization
(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))
  (flymake-google-cpplint-load)
)
(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++mode-hook 'my:flymake-google-init)

; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))

(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'"))
)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 4)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)
