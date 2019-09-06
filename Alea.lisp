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
 '(("distributions" nil nil (alea::ran alea::ran01 alea::choix alea::choixmultiple alea::distexp alea::expobi alea::distlin
                                 alea::distcauchy alea::distlog alea::distCsHp alea::distarsin alea::poisson alea::triang alea::weilbull
                                 alea::gauss alea::gamma alea::beta alea::bfp-to-distribution) nil)
   ("alea-seq" nil nil (alea::not-centr alea::alea-seq alea::linea-seq alea::triang-seq) nil)
   ("random-walks" nil nil (alea::brownian1 alea::brownian2  
                                      alea::randwalk1 alea::randwalk2 alea::randwalkX 
                                      alea::achorripsis alea::i1/f alea::seq1/f 
                                      alea::markov1 alea::markov2 alea::Ana-Mark alea::Ana-Mark1 alea::Ana-Mark2 
                                      alea::transition2) nil)
   ("tools" nil nil (alea::zoom1 alea::zoom2 alea::zoom3 alea::zoom4 
                                 alea::filtre1 alea::filtre2 alea::filtre3 alea::filtre4) nil)))

(om::add-lib-alias "OMAlea" "Alea")

(om::set-lib-release 1.2)
