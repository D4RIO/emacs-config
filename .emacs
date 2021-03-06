;;
;;  `7MM"""Yb.             `7MM"""Mq.  `7MMF  .g8""8q.   
;;    MM    `Yb.             MM   `MM.   MM .dP'    `YM. 
;;    MM     `Mb     ,AM     MM   ,M9    MM dM'      `MM 
;;    MM      MM    AVMM     MMmmdM9     MM MM        MM 
;;    MM     ,MP  ,W' MM     MM  YM.     MM MM.      ,MP 
;;    MM    ,dP',W'   MM     MM   `Mb.   MM `Mb.    ,dP' 
;;  .JMMmmmdP'  AmmmmmMMmm .JMML. .JMM..JMML. `"bmmd"'   
;;                    MM                                 
;;                    MM          rodriguez.dario.a@gmail.com

;;                                ASCII art from images by https://asciiart.club/
;;                                          from text by http://www.patorjk.com/software/taag/



;; ███████╗███╗   ███╗ █████╗  ██████╗███████╗ 
;; ██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝ 
;; █████╗  ██╔████╔██║███████║██║     ███████╗ 
;; ██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║ 
;; ███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║ 
;; ██╗════╝╚█████╗ ████████╗═█████╗═███╗═══███╗
;; ██║     ██╔══██╗╚══██╔══╝██╔══██╗████╗ ████║
;; ██║     ███████║   ██║   ███████║██╔████╔██║
;; ██║     ██╔══██║   ██║   ██╔══██║██║╚██╔╝██║
;; ███████╗██║  ██║   ██║   ██║  ██║██║ ╚═╝ ██║
;; ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝



(pop-to-buffer "*Messages*")
(message "CARGANDO ARCHIVO DE CONFIGURACIóN PERSONALIZADO")
(delete-other-windows)
(message "Se inicializa el gestor de paquetes para permitir la instalación de on-demand durante el proceso de inicialización")
(package-initialize)



;; Las funciones de manejo de paquetes van primero, así puedo instalar mis paquetes favoritos
;; en cualquier emacs solamente cargando mi archivo de configuración.



;; ----------------- Melpa

(message "CONFIGURANDO MELPA")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(message "REFRESCANDO PAQUETES DEL GESTOR")
(message "Esto es porque las instalaciones on-demand fallan si no se refrescó la lista de paquetes")
(package-refresh-contents)



;; ----------------- Instalar paquetes que sean necesarios (si este archivo se carga en EMACS sin configurar)

(defun on-demand (package &optional repository)
  "Instalar el parquete 'package' si no está instalado.
Si se especifica el repositorio 'repository', instalarlo desde ahí"
  (message "CARGANDO REQUISITO: %s" package)
  (unless (package-installed-p package)
    (let ((package-archives (if repository
                                (list (assoc repository package-archives))
                              package-archives)))
      (message "INSTALANDO PAQUETE FALTANTE: %s" package)
      (package-install package)))
  (require package)
  )




;; ---------- Preferencias

;;(setq x-select-enable-clipboard 1) ;  Usar clipboard de X para permitir copiar y pegar desde el escritorio
(on-demand 'nlinum)
(on-demand 'nlinum-relative)
(display-time-mode)                                           ;  Muestra la hora en statusbar
(on-demand 'doom-modeline)                                    ;  DOOM modeline es limpio y es eficiente 
(doom-modeline-mode 1)                                        ;
(on-demand 'mode-icons)	                                      ;
(mode-icons-mode)                                             ;  Iconos de modo (elisp, python, php, ...)
(on-demand 'nyan-mode)                                        ;  Asegurarme que tengo al gatito
(global-auto-revert-mode t)                                   ;  Esta magia recarga automáticamente los buffers cambiados en disco
(on-demand 'diff-hl)
(global-diff-hl-mode t)                                       ;  Recoge información de GIT
(on-demand 'emojify)                                          ;
(global-emojify-mode)                                         ;  Emojis ON ;)
(on-demand 'helm)                                             ;  HELM searches like Heimdall
(on-demand 'neotree)					      ;  Navegador de archivos
(neotree-show)
(on-demand 'magit)					      ;  Modo GIT
(on-demand 'magit-diff-flycheck)			      ;  Flycheck sobre los diff (ve errores durante la revisión)
(setq-default indent-tabs-mode nil)                           ;  Indentar saludablemente con espacios


;; ---------- Paquetes favoritos

(on-demand 'howdoyou)                                         ; Búsquedas en StackExchange y hermanos
(on-demand 'ample-theme)                                      ; Temas
(on-demand 'dracula-theme)
(on-demand 'subatomic-theme) 
(on-demand 'srcery-theme)
(on-demand 'company)					      ; Autocomplete
(on-demand 'web-mode)					      ; Good 'ol WEB Mode
(on-demand 'use-package)				      ;
(on-demand 'pdf-tools)					      ; PDFs inside emacs
(on-demand 'line-reminder)
(on-demand 'all-the-icons)				      ;





;;   ___________________________________________________________
;; ╒█'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''▀▄
;; ▐▌                                                           ▐▌
;; ▐▌   ███▌ ╟███  ███▌ ╟███  ███▌ ▓███  ███▌ ▓███  ███▌ ▓███   ▐▌
;; ▐▌   ▀▀▀▀ ╙▀▀▀  ▀▀▀▀ ╙▀▀▀  ▀▀▀▀ ╙▀▀▀  ▀▀▀▀ ╙▀▀▀  ▀▀▀▀ ╙▀▀▀   ▐▌
;; ▐▌   ▄▄▄▄▄▄  ▄▄▄▄  ▄▄▄  ╓▄▄▄  ▄▄▄▄ .▄▄▄  ▄▄▄▄  ▄▄▄▄ ┌▄▄▄▄▄   ▐▌
;; ▐▌   ██████  ████ ▐███▌ ▓███  ███▌ ▐███µ ████  ███▌ ▐█████⌐  ▐▌
;; ▐▌   ------   --   ---   ---   --   ---   ---  ---   -----   ▐▌
;; ▐▌   ████████▌ ▐███∩ ████  ███▌ ▐███  ████  ███▌ ▐████████_  ▐▌
;; ▐▌   ████████▌ ▐███─ ▀███  ███▌ ▐███  ▀███  ███▌ ▐████████`  ▐▌
;; ▐▌   ▄▄▄▄▄▄▄▄, .▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄, .▄▄▄▄▄▄▄▄   ▐▌
;; ▐▌   ████████▌ ▐███████████████████████████████▌ ▐████████   ▐▌
;; ▐▌   ''''''''' `'''''''''''''''''''''''''''''''  `''''''''   ▐▌
;; ▐▌                        KEYBINDINGS                        ▐▌
;;  '▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀└

;; ----------  C-x C-; para comentar funciona muy bien en teclados americanos,
;; ----------  pero en teclados latinos ';' requiere SHIFT

(global-unset-key (kbd "C-x C-;"))
(global-unset-key (kbd "M-;"))

(global-set-key   (kbd "C-#") 'comment-dwim)                    ; funcionalidad de comentar/descomentar
		                                                ; inteligente y comentarios estilo bash


;; ---------- Navegar con {} es más simple si se permanece en CTRL
;; ---------- A su vez, se puede agregar ALT para avanzar más rápido

(global-unset-key (kbd "M-{"))
(global-unset-key (kbd "M-}"))

(global-set-key   (kbd "C-{")    'backward-paragraph)           ; C-{    retroceder un párrafo
(global-set-key   (kbd "C-}")    'forward-paragraph)            ; C-}    avanzar un párrafo
(global-set-key   (kbd "C-M-{")  'backward-page)                ; C-M-{  retroceder una página
(global-set-key   (kbd "C-M-}")  'forward-page)                 ; C-M-}  avanzar una página


;; ---------- HELM al buscar con C-s

(global-unset-key (kbd "C-s"))
(global-set-key   (kbd "C-s")    'helm-occur-visible-buffers)


;; ---------- HELM para M-x

(global-unset-key (kbd "M-x"))
(global-set-key   (kbd "M-x")    'helm-M-x)


;; ---------- ZOOM in+out con CTRL+ y CTRL-

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)


;; ---------- No me gusta C-d para borrar un caracter (prefiero usar backspace/supr)
;; ---------- En su lugar, redefino C-d para ser el padre de la familia de borrado
;; ---------- Esto viene con la ventaja de dejar C-k sin usar

(global-unset-key (kbd "C-d"))
(global-unset-key (kbd "C-k"))
(global-set-key   (kbd "C-d C-l")   (lambda () "Borra toda la línea (kill)." (interactive)
				      (kill-whole-line)
				      (message "C-d C-l kill toda la línea.")))
(global-set-key   (kbd "C-d C-e")   (lambda () "Borra hasta el fin de línea (kill)." (interactive)
				      (kill-line)
				      (message "C-d C-e kill hasta el fin de línea.")))
(global-set-key   (kbd "C-d C-c")   (lambda () "Borra un carácter." (interactive)
				      (delete-char 1)
				      (message "C-d C-c borrar un carácter.")))
(global-set-key   (kbd "C-d C-a")   (lambda () "Borra hasta el principio de la línea (kill)." (interactive)
				      (set-mark-command)
				      (move-beggining-of-line)
				      (kill-region)
				      (message "C-d C-a kill hasta el principio de la línea.")))
(global-set-key   (kbd "C-d C-r")   (lambda () "Borra una región (kill)." (interactive)
				      (kill-region)
				      (message "C-d C-r kill sobre una región.")))
(global-set-key   (kbd "C-d C-g")   'keyboard-quit)


;; ---------- NAVEGACIÓN PARA MENTES MÁS SALUDABLES

;; ---------- La navegación con 'p', 'n', 'b' y 'f' es incómoda

(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "C-n"))

;; Una propuesta de navegación más simple es usar las teclas

(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-l"))
(global-unset-key (kbd "C-ñ"))
(global-unset-key (kbd "C-o"))

(global-set-key   (kbd "C-o")   'previous-line) ; 'k', 'l', 'ñ' y 'o'
(global-set-key	  (kbd "C-l")	'next-line);
(global-set-key	  (kbd "C-ñ")	'forward-char)
(global-set-key   (kbd "C-k")   'backward-char)



 ;;                              ,╗@@╗,
 ;;                          ,╗@▒▒▒▒▒▒▒▒@╗,
 ;;                     ,╗@▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒@╗_
 ;;                  _╔@╫▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒@µ_
 ;;              _╔@▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒@µ_
 ;;          _╓@▓▒▒▒▒▒▒▒▒▒▒▒▒▒▓▀▀╜╜╜╙╜╨▀▀▓▒▒▒▒▒▒▒▒▒▒▒▒▒╫@µ_
 ;;      _╓@▓▒▒▒▒▒▒▒▒▒▒▒▒▀ `                `*▀@▒▒▒▒▒▒▒▒▒▒▒╫@µ_
 ;;   ╓@▓▒▒▒▒▒▒▒▒▒▒▒▒▓╜                          ╙╫▒▒▒▒▒▒▒▒▒▒▒▒▓@µ_
 ;; ╒╣▒▒▒▒▒▒▒▒▒▒▒▒▒▀                               `╙▒▒▒▒▒▒▒▒▒▒▒▒▓▓╕
 ;; [▒▒▒▒▒▒▒▒▒▒▒▒▀                                    ╚▒▒▒▒▒▒▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒▒▒▒                                       `▒▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒▒▓              _╓@@▓▒▒▒▒╫@@╖_         _╗@▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒▒             ╓@▒▒▒▒▒▒▒▒▒▒▒▒▒▒@µ   _╓@▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒M            @▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓@▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒            @▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▌           ]▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▌           ]▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒╫            ▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒_           ╘▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒@            `▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ╙▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒▒@             `▀▓▓▓▓▓▓▓▓▓▓▓▓▀`        ╙▀▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▒▒▒▓▓                   ▀▀                   ▓▓▓▓▓▓▓▓▓▓▓▌
 ;; [▒▒▒▒▒▒▓▓▓▓▓▓µ                                    ┌▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;; ]▒▒▓▓▓▓▓▓▓▓▓▓▓▓,                                ,▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌
 ;;  ╙▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▄_                           ▄▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀
 ;;     '▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▄,_                   ,▄▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀ 
 ;;         '▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▄▄╖,______,╓▄▄▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀ 
 ;;              ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀ 
 ;;                  ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀ 
 ;;                      ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀ 
 ;;                          ▀▓▓▓▓▓▓▓▓▓▓▓▓▀ 
 ;;                              ▀▓▓▓▓▀▀



;; AUTOCOMPLETE EXUBERANT CTAGS

(on-demand 'auto-complete-exuberant-ctags)
(ac-exuberant-ctags-setup)

(message "CONFIGURANDO CLang como backend de respaldo para flycheck")
(message "ACTUALMENTE SE USA c/c++-gcc")
(on-demand 'flycheck-clang-analyzer)
(with-eval-after-load 'flycheck
   (require 'flycheck-clang-analyzer)
   (flycheck-clang-analyzer-setup))



;; ████████████████████████████████████████████████████████████████████████████████
;; ██████████        ▀███████████████▀        █████████████▌       ▐███████████████
;; ██████████          ████████████▀          █████████████▌       ▐███████████████
;; ██████████           "████████▀            █████████████▌       ▐███████████████
;; ██████████             ▀█████              █████████████▌       ▐███████████████
;; ██████████               ▀█"               █████████████▌       ▐███████████████
;; ██████████                                 █████████████▌       ▐███████████████
;; ██████████        █▄            .█▌        ██████▀▀▀▀▀▀▀L       ▐▀▀▀▀▀▀▀████████
;; ██████████        ███▄         ▄██▌        ███████_                   _█████████
;; ██████████        █████_     ▄████▌        ████████▓                 ▓██████████
;; ██████████        ███████  ▄██████▌        ██████████▄             ▄████████████
;; ██████████        ████████████████▌        ████████████▄         ▄██████████████
;; ██████████        ████████████████▌        ██████████████▄     ▄████████████████
;; ██████████        ████████████████▌markdown████████████████▄ ▄██████████████████
;; ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀



(add-hook 'markdown-mode-hook (lambda ()
				(define-key markdown-mode-map (kbd "C-M-{")        'markdown-previous-visible-heading)
				(define-key markdown-mode-map (kbd "C-M-}")        'markdown-next-visible-heading)
				(define-key markdown-mode-map (kbd "C-s-<down>")   'markdown-table-move-row-down)
				(define-key markdown-mode-map (kbd "C-s-<up>")     'markdown-table-move-row-up)
				(define-key markdown-mode-map (kbd "C-s-<left>")   'markdown-table-move-column-left)
				(define-key markdown-mode-map (kbd "C-s-<right>")  'markdown-table-move-column-right)
				)
	  )



;; ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╫▓╣▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓╣▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║▓╫╣╣▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒╣▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░▐████░░░░▒▄▓███████▓▄░░░░░░░░▓▓╫▓_    ▀▒▒▒▒▀    ╓▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░▐████░░░▒▓████▀▀▀████░░░░░░░░▓▓▒▒▓µ    ╙▒╫▀    á▒╣▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░▐████░░░▒████░░░░░▀░░░░░░░░░▐▓╣▒▒▒▒N    ╙▀    @╫▒▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░▐████░░░▒█████▓▄░░░░░░░░░░░░▓▓╫▒▒▒╣╣▓_      ╓▓▒▒▒▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░▐████░░░░░▀████████▓▄░░░░░░░▓╫▒▒▒▒▒▒╣▓     ⁿ▒╣▒▒▒▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░▐████░░░░░░░░▀▀███████░░░░▒╫▓╫▒▒▒▒╣▒▀       `▓╣▒▒▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░▐████░░░░░░░░░░░░░█████░░░░▓▓▒▒▒╣╣▒▀    @_    ▀╫▒▒▒▒▒
;; ░░░░░░░░░░░░░░░░░░░▄▓█▄░░░▓████░░░▄▓██▄░▒░▒░▓████░░░╢▓╫╣▒▒▒╫     @╣╫µ    ╙╣▒▒▒▒
;; ░░░░░░░░░░░░░░░░░▒▀███████████▀░░▒▀█████████████░░░▒▓▓▒╣╣╫▌    ╓▓▒▒╣╫@    `▓╣╣▒
;; ░░░░░░░░░░░░░░░░░░░░▀▀█████▀▀░░░░░░▒░▀▀█████▀▀░░░░░░▓╫▒▒╫▀____á▒╣▒▒▒▒╫▓_____▀╣▒
;; ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╫▓╫╣▒▒▒╣╣╣╣╫▒▒▒▒▒▒▒╫╣╣╣╣╣▒▒▒
;; ***************************************************▀ªªªªªªªªªªªªªªªªªªªªªªªªªªª


;; ------------ TIDE / flycheck

(on-demand 'tide)					      ; Proporciona un entorno interactivo para JS / TypeScript
(on-demand 'prettier-js)				      ; Prettier para JS/JSX

(message "Se define setup-tide-mode como hook de js-mode.")
(defun setup-tide-mode ()
  "Setup function for tide."
  (message "DEFINIENDO setup-tide-mode conforme a la documentación de tide.")
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1)
  ;; ---------- Keybindings más sencillos para TIDE
  (define-key js-mode-map (kbd "C-.")        'tide-jump-to-definition)
  (define-key js-mode-map (kbd "C-,")        'tide-jump-back)
  (define-key js-mode-map (kbd "C-?")        'tide-references)
  (define-key js-mode-map (kbd "C-<return>") 'tide-fix)
  ;; ----------------------------------------------
  (define-key typescript-mode-map (kbd "C-.")        'tide-jump-to-definition)
  (define-key typescript-mode-map (kbd "C-,")        'tide-jump-back)
  (define-key typescript-mode-map (kbd "C-?")        'tide-references)
  (define-key typescript-mode-map (kbd "C-<return>") 'tide-fix)
  )
(setq company-tooltip-align-annotations t)
(add-hook 'js-mode-hook #'setup-tide-mode)
(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; CUSTOM: variable flycheck-javascript-standard-executable a "/usr/bin/standardx"
;; para usar standardx como backend de flycheck


;; ------------ JS y JSX - prettier-js (MELPA)

(message "Se carga prettier como hook para js-mode.")
(add-hook 'js-mode-hook (lambda ()
			  (message "PRETTIER-JS cambiará el estilo del código siempre al guardar.")
			  (prettier-js-mode))
	  )

;; CUSTOM: variable prettier-js-args a
;;        --trailing-comma "none"
;;        --bracket-spacing "true"
;;        --single-quote "true"
;;        --no-semi "true"
;;        --jsx-single-quote "true"
;;        --jsx-bracket-same-line "true"
;;        --print-width "100"



;;                                                   .██∩                      
;;                                                  ▄█▓█                       
;;                                                .▓█▓█                        
;;   ORG MODE                                     █▀▓▓▌                        
;;                                              ▄█▒▓▓▌                         
;;                                             ▄█▄▓██                          
;;                                       _▄_  ▐▌▀▓▓█                           
;;                              ,▄▄     █▀▒█ ██▒▓▓█▌                           
;;                             ▐█▒▓█µ _▐▌▒▒▀██▄▄▓█▌                            
;;                            ╓█▒▓█▒██▒▒▒▒▒▓▌▀▀▀▓█                             
;;                          ╓██▒▒███▓▀▓▓▓▓▓▓▓█▓▀▒▀█▓▓▄                         
;;                      _▄▄██▓▌▒▒▒█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄_                      
;;             ,▄▄▄▄▓▓██▒▒▓▓▓▓▌▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▒▒▒▒▒▒▒▒▒▀█▓▓ΦΦΦ@▄▄▄▄▄▓▓▄      
;;         _▄██▒▒▀▒▒▒▒▒▒▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▌     
;;       ▄██▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▌    
;;     ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓█     
;;    ██▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▒█▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒▓█▌       
;;  ╓█▒▒▒▒▒▒▒▒▒▒▒╣▓▓▓▓▓▓▓▓▓▓▒▒▓▓▒▓█▓▒▒▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▓▓▓▒▒▌       
;; ╒█▓▒▒▒▒▒▒▒▒▒▒▓▒▀▓▓▓▓▓▓█▓▓▒▒▒█▒▒█▒▒▓▓▓▒▀▓▓▓▓▒▒▒▒▒▒█▀▀▀▀▀▀▀▀▀▀▓▓▓▓▓▀▀└        
;; █▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▒▓▒▀▒▒▒▒▒▒▒▓▓▓▓▓▒█▓▓▓▒▒▓█▀'                           
;; █▓▒▒▒▒▒▒▓▒▒▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▒█                                     
;; █▓▒▒▒▒▒▒▓▓▓╣▓▓▓▓▓▓▓▓▀▓▒▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▌                                     
;; █▓▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▀▓▓▒▒▒▒▒▒▓▓▓▓▌█                                      
;; ▐█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▒▌                                     
;;  █▓▓▓▓▓▓▓▓▓▓▓▓█▓▓▒▒▀▓▓▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▒█▄                                   
;;   █▓▓▓▓▓▓▓▓▓█▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▓▓▓▓▓▒▀▓▄_                               
;;    █▓▓▓▓█▓█▒▓▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▒▒█▄                             
;;     ▀█▓▓▌▒▒▒▓▓▒▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▒▀▓_                          
;;        ▀█▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▀█_                        
;;          ▀▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▀▓                       
;;            ▀▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒█▄                     
;;              ▀▀▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▀▀▀▓▓▓▓▓▒▒▀▓▓▓▓▓▓▒█                    
;;                 `▀▀▀▀▀▓▓▓▀▀▀▀▀└                ▀▀▓▓▒▀▓▓▒█_                  
;;                                                     ▀█▓▀▒█µ                 
;;                                                       '▀█▒█_                
;;                                                          ▀█▌                


(message "CONFIGURANDO ORG")

(on-demand 'org-bullets)				      ;  Hace más bello trabajar con ORG
(on-demand 'org-beautify-theme)				      ;  Aún más bello
(on-demand 'org-babel-eval-in-repl)                           ;  Evaluar piezas de código en org

(setq org-image-actual-width nil)                             ;  Las imágenes no se muestran siempre en tamaño real
(setq calendar-latitude -34.94268)                            ;  Latitud para el calendario
(setq calendar-longitude -57.91225)                           ;  Longitud para el calendario
(setq calendar-location-name "La Plata, BsAs")                ;  Nombre de la ubicación para el calendario(appt-activate)
(add-hook 'diary-hook 'appt-make-list)                        ;  Notificaciones del Diario
(setq org-startup-indented t
      org-src-tab-acts-natively t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(message "FIN .emacs")

(setq custom-file
      "~/.emacs.d/customs.el")
(load custom-file)

