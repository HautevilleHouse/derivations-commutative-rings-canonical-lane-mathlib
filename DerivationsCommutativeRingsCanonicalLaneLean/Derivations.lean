import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure Derivation (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  toFun : R → M
  leibniz : ∀ a b : R, toFun (a * b) = a • toFun b + b • toFun a
  additive : ∀ a b : R, toFun (a + b) = toFun a + toFun b
  smul : ∀ (r : R) (a : R), toFun (r * a) = r • toFun a

structure DerivationPackage (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  carrier : Type w
  derivation : Derivation R M
  sourceRing : CommRing R
  targetModule : Module R M

structure DerivationEvidence {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] (D : DerivationPackage R M) where
  leibnizClosed : D.derivation.leibniz
  additiveClosed : D.derivation.additive
  smulClosed : D.derivation.smul

def DerivationClosed {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] (D : DerivationPackage R M) : Prop :=
  D.derivation.leibniz ∧ D.derivation.additive ∧ D.derivation.smul

theorem derivation_closed_from_evidence
    {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] (D : DerivationPackage R M) (E : DerivationEvidence D) :
    DerivationClosed D := by
  exact And.intro E.leibnizClosed (And.intro E.additiveClosed E.smulClosed)

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
