; COMMAND-LINE: --solve-bv-as-int=1 --no-check-models  --no-check-unsat-cores --no-check-proofs 
; COMMAND-LINE: --solve-bv-as-int=8 --no-check-models  --no-check-unsat-cores --no-check-proofs
; EXPECT: unsat
(set-logic QF_BV)
(declare-fun a () (_ BitVec 8))
(declare-fun b () (_ BitVec 8))
(assert (bvult (bvashr a b) (bvlshr a b)))

(check-sat)
