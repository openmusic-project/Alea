;============================================================================
; Alea
; Aleatoric-functions library for OM
;============================================================================
;
;   This program is free software. For information on usage 
;   and redistribution, see the "LICENSE" file in this distribution.
;
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
;
;============================================================================

(defpackage "ALEA" 
  (:use "COMMON-LISP" "OM"))

(in-package "ALEA")

;;; mettre dans un des fichiers sources...
(defun om-random-value (val)
  (om::om-random-value val))