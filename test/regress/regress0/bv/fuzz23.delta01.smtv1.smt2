(set-option :incremental false)
(set-info :status sat)
(set-logic QF_BV)
(declare-fun v1 () (_ BitVec 4))
(check-sat-assuming ( (= (_ bv1 1) ((_ extract 0 0) (bvsub (bvnot v1) (_ bv1 4)))) ))
