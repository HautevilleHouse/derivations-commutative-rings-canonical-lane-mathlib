import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivationsCommutativeRingsCanonicalLaneLean.Derivations

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure ExactSequencePackage (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (N : Type w) [AddCommGroup N] [Module R N] (P : Type x) [AddCommGroup P] [Module R P] where
  f : M →ₗ[R] N
  g : N →ₗ[R] P
  exactAtN : LinearMap.ker g = LinearMap.range f
  compatibleDerivations : Prop

structure ExactSequenceEvidence {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] {N : Type w} [AddCommGroup N] [Module R N] {P : Type x} [AddCommGroup P] [Module R P] (E : ExactSequencePackage R M N P) where
  exactAtNClosed : E.exactAtN
  compatibleDerivationsClosed : E.compatibleDerivations

def ExactSequenceClosed {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] {N : Type w} [AddCommGroup N] [Module R N] {P : Type x} [AddCommGroup P] [Module R P] (E : ExactSequencePackage R M N P) : Prop :=
  E.exactAtN ∧ E.compatibleDerivations

theorem exact_sequence_closed_from_evidence
    {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] {N : Type w} [AddCommGroup N] [Module R N] {P : Type x} [AddCommGroup P] [Module R P] (E : ExactSequencePackage R M N P) (Ev : ExactSequenceEvidence E) :
    ExactSequenceClosed E := by
  exact And.intro Ev.exactAtNClosed Ev.compatibleDerivationsClosed

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
