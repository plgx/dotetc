; -*- coding: utf-8; lexical-binding: t; eval: (set-input-method 'latin-1-prefix) -*-


;; variables locales al final

;; sample use of abbrev from http://xahlee.info/emacs/emacs/emacs_abbrev_mode.html

(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table
  '(

    ;; Personal data
    ("gbw"      "Gilberto")
    ("gcw"      "Gilberto Conde")
    ("gczw"     "Gilberto Conde Zambada")
    ("hmw"	"ah.gilberto.c@gmail.com")
    ("wmw"      "gilberto.conde@colmex.mx")
    ("celw"     "el +525566173948")

    ;; correccion en Sp
    ("uspw"       "Una sola palabra.")
    ("spm"        "Subrayado para mí (GC).")
    ("redw"       "Mejorar la redacción de este segmento.")
    ("nsew"       "No se entiende. Mejorar la redacción.")
    ("palabw"     "Falta una palabra, aparentemente ")
    ("pycsw"      "punto y coma o punto y seguido")
    ("pycw"       "punto y coma")
    ("pysw"       "punto y seguido")
    ("demcw"      "demostrar o citar")
    ("artw"       "Falta artículo")

    ;; correccion erratas Sp
    ("aunqeu"       "aunque")
    ("lsa"	    "las")
    ("lso"	    "los")
    ("qeu"	    "que")
    ("polbaciones"      "poblacioens")
    ("internacioanles"  "internacionales")

    ;; caracteres para trasliterar del árabe
    ;; tomado de https://software.sil.org/charis/design/
    ("tthat"        "ṯ")
    ("tgimt"	    "ȳ")
    ("that"	    "ḥ")
    ("tkhat"	    "ẖ")
    ("tdhalt"       "ḏ")
    ("tshint"       "š")
    ("tsadt"        "ṣ")
    ("tdadt"        "ḍ")
    ("ttat"         "ṭ")
    ("tzhat"        "ẓ")
    ("tghaynt"      "ḡ")

    ;; Países y regiones en Sp
    ("eauw"         "Emiratos Árabes")
    ("britw"        "Gran Bretaña")
    ("usaw"         "Estados Unidos")
    ("usw"          "estadounidense")
    ("ksaw"         "Arabia Saudí")
    ("urssw"        "Unión Soviética")
    ("mow"          "Medio Oriente")
    ("moanw"        "Medio Oriente y África del Norte")
    ("onuw"         "Naciones Unidas")
    ("csw"          "Consejo de Seguridad")
    ("cdmxw"        "Ciudad de México")

    ;; Países y regiones en En
    ("mej"          "Middle East")
    ("usaj"         "United States")
    ("britj"        "Britain")
    ("unj"          "United Nations")
    ("urssj"        "Soviet Union")
    ("unscj"        "Security Council")

    ;; Universidades
    ("colmexw"      "El Colegio de México")
    ("ceaaw"        "Centro de Estudios de Asia y África")
    ("buapw"        "Benemérita Universidad Autónoma de Puebla")
    ("colefw"       "El Colegio de la Frontera Norte")
    ("fcpysw"       "Facultad de Ciencias Políticas y Sociales")
    ("fesw"         "Facultad de Estudios Superiores")
    ("ffylw"         "Facultad de Filosofía y Letras")
    ("ponchow"      "Instituto de Ciencias Sociales y Humanidades Alfonso Vélez Pliego")
    ("uabcw"        "Universidad Autónoma de Baja California")
    ("uamw"         "Universidad Autónoma Metropolitana")
    ("unamw"        "Universidad Nacional Autónoma de México")

    ;; Proper names
    ("apow"         "Abdullah Öcalan")
    ("wwiw"         "Primera Guerra Mundial")
    ("wwij"         "First World War")
    ("wwiiw"        "Segunda Guerra Mundial")
    ("wwiij"        "Second World War")

    ;; English word abbrev
    ("argj" "argument" )
    ("bcj" "because" )
    ("bgj" "background" )
    ("btj" "between" )

    ;; English abridged words
    ("cnt" "can't" )
    ("ddnt" "didn't" )
    ("dnt" "don't" )

    ;; English phrase abbrev
    ("asapj" "as soon as possible" )
    ("afaikj" "as far as i know" )
    ("atmj" "at the moment" )
    ("tyj" "thank you" )
    ("btwj" "by the way" )

    ;; ;; computing
    ;; ("cfg" "context-free grammar" )
    ;; ("cs" "computer science" )

    ;; tech company
    ("zgc" "Google Chrome" )
    ("zmacos" "macOS" )
    ("zmf" "Mozilla Firefox" )
    ("zmsw" "Microsoft Windows" )

    ;; ;; programing
    ;; ("ipa" "IP address" )
    ;; ("jvm" "Java Virtual Machine" )
    ;; ("rsi" "Repetitive Strain Injury" )
    ;; ("subdir" "subdirectory" )
    ;; ("db" "database" )

    ;; ("evp" "environment variable" )
    ;; ("guip" "graphical user interface" )
    ;; ("oopp" "object oriented programing" )
    ;; ("osp" "operating system" )

    ;; programing
    ("zeq" "==" )
    ("zr" "return" )
    ("zutf8" "-*- coding: utf-8 -*-" )
    ("zorg" "-*- mode: org -*-" )

    ;; regex
    ("azt" "\\([A-Za-z0-9]+\\)")
    ("brackett" "\\[\\([^]]+?\\)\\]")
    ("curlyt" "“\\([^”]+?\\)”")
    ("digitst" "\\([0-9]+\\)")
    ("datet" "\\([0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]\\)")
    ("strt" "\\([^\"]+?\\)")

    ;; unicode
    ("zhr" "--------------------------------------------------" )
    ("zbu" "•" )
    ("zcatface" "😸" )
    ("zhrts" "♥💕💓💔💖💗💘💝💞💟💙💚💛💜" )
    ("zra" "→" )

    ;;
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;      ESTO es un parentesis nuevo para un major-mode especifico.
;;      Por ejmplo, puede ser solo para LaTeX, org u otro
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table

;; (progn
;;   (when (boundp 'go-mode-abbrev-table)
;;     (clear-abbrev-table go-mode-abbrev-table))
;;   (define-abbrev-table 'go-mode-abbrev-table
;;     '(("go" "package main
;; import \"fmt\"
;; func main() {
;;         fmt.Println(\"3\")
;; }")

;;       ("p" "fmt.Printf(\"%v\\n\", hh▮)")
;;       ("pl" "fmt.Println(hh▮)")
;;       ("r" "return")
;;       ("st" "string")
;;       ("eq" "==")
;;       ("v" "var x = 3")
;;       ("df" "x := 3")
;;       ("c" "const x = 3")
;;       ("f" "func ff(x int) int {
;;     return nil
;; }")
;;       ("if" "if 4 { 3 }")
;;       ("ie" " if err != nil { panic(err) }")
;;       ("ei" "else if x > 0 { 3 }")
;;       ("else" "else { 3 }")
;;       ("for" "for i := 0; i < 4; i++ { i }")
;;       ("fr" "for k, v := range xxx {
;; ▮
;;     }
;; "))))

(set-default 'abbrev-mode t)

(setq save-abbrevs nil)

;;; Local Variables:
;;; End:
