;; standard block/inline chunk styles
;; :PROPERTIES:
;; :header-args: :tangle ox-ravel-style.el :comments org
;; :END:

;; Separate =defmarco= and thier evaluations.


(require 'ox-ravel)

;; org-ravel-style-x-rnw
;; #+NAME: org-ravel-style-x-rnw

(org-ravel-style-x "rnw"
"<<%s>>=\n%s\n@ %%def"
"\\Sexpr{ %s }")

;; org-ravel-style-x-tex
;; #+NAME: org-ravel-style-x-tex

(org-ravel-style-x "tex"
                   "%% begin.rcode( %s )\n%s\n%% end.code"
                   "\\rinline{ %s }"
                   "%")

;; org-ravel-style-x-html
;; #+NAME: org-ravel-style-x-html

(org-ravel-style-x "html"
"<!--begin.rcode  %s \n%s\nend.rcode-->"
"<!--rinline  %s  -->")

;; org-ravel-style-x-md

;; =ob-md.el= has no provision for the export-snippet, so the html snippet
;; is applied by default.  The md exporter processes `this kind of text` as plain
;; text and escapes `*` and other characters that might be legitimate
;; inline code. 


;; #+NAME: org-ravel-style-x-md

(org-ravel-style-x "md"
"```{r  %s }\n%s \n```"
"@@html:`r  %s `@@")

;; org-ravel-style-x-braces
;; #+NAME: org-ravel-style-x-braces

(org-ravel-style-x "braces"
"{{%0.0s%s}}"
"{{%s}}")

;; org-ravel-style-x-rst

;; #+NAME: org-ravel-style-x-rst

(org-ravel-style-x "rst"
		   "..{r %s}\n%s\n.. .."
		   ":r:`%s`"
		   "%")

;; provide =ox-ravel-style=

(provide 'ox-ravel-style)

;;; ox-ravel-style.el ends here
