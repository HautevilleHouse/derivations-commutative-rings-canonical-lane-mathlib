import canonicalLaneMathlib.AdmissibleClass

/-! # Leibniz Rule Package -/

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure DerivationData where
  carrierRing : Type
  _ : CommRing carrierRing
  derivation : carrierRing → carrierRing
  additive : ∀ x y, derivation (x + y) = derivation x + derivation y
  leibniz : ∀ x y, derivation (x * y) = x * derivation y + y * derivation x

structure LeibnizRulePackage where
  D : DerivationData
  leibnizClosed : Prop
  additiveClosed : Prop

structure LeibnizRuleEvidence (L : LeibnizRulePackage) where
  leibnizClosedTerm : L.leibnizClosed
  additiveClosedTerm : L.additiveClosed

def LeibnizRuleClosed (L : LeibnizRulePackage) : Prop :=
  L.leibnizClosed ∧ L.additiveClosed

theorem leibniz_rule_closed_from_evidence (L : LeibnizRulePackage) (E : LeibnizRuleEvidence L) :
    LeibnizRuleClosed L := by
  exact And.intro E.leibnizClosedTerm E.additiveClosedTerm

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse