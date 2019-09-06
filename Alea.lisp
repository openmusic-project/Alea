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

;;; LIB LOADER FOR OM6

(in-package :om)

(mapc #'om::compile&load 
      (list 
       (om::om-relative-path '("sources") "package")
       (om::om-relative-path '("sources") "distributions")
       (om::om-relative-path '("sources") "random-walks")
       (om::om-relative-path '("sources") "alea-sequences")
       (om::om-relative-path '("sources") "outils")
       ))


(om::fill-library 
 '(("distributions" nil nil (ran ran01 choix choixmultiple distexp  expobi distlin
                                 distcauchy distlog distCsHp distarsin poisson triang weilbull
                                 gauss gamma beta bfp-to-distribution) nil)
   ("alea-seq" nil nil (not-centr alea-seq linea-seq triang-seq) nil)
   ("random-walks" nil nil (brownian1 brownian2  
                                      randwalk1  randwalk2 randwalkX 
                                      achorripsis i1/f seq1/f 
                                      markov1 markov2 Ana-Mark Ana-Mark1 Ana-Mark2 
                                      transition2) nil)
   ("tools" nil nil ( zoom1 zoom2  zoom3 zoom4 filtre1  filtre2  filtre3 filtre4) nil)))

(om::add-lib-alias "OMAlea" "Alea")

(om::set-lib-release 1.2)
