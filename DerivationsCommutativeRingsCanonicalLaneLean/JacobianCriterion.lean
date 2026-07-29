import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivationsCommutativeRingsCanonicalLaneLean.KahlerDifferentials

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure JacobianCriterionPackage (R : Type u) [CommRing R] (S : Type v) [CommRing S] [Algebra R S] where
  kahler : KahlerDifferentialsPackage R S
  finitePresentation : S ≃ₐ[R] PolynomialAlgebra R (FiniteTypeGenerators)
  jacobianMatrix : Matrix (Fin n) (Fin m) S
  criterionSatisfied : Prop

structure JacobianCriterionEvidence {R : Type u} [CommRing R] {S : Type v} [CommRing S] [Algebra R S] (J : JacobianCriterionPackage R S) where
  kahlerClosed : KahlerDifferentialsClosed J.kahler
  criterionSatisfiedClosed : J.criterionSatisfied

def JacobianCriterionClosed {R : Type u} [CommRing R] {S : Type v} [CommRing S] [Algebra R S] (J : JacobianCriterionPackage R S) : Prop :=
  KahlerDifferentialsClosed J.kahler ∧ J.criterionSatisfied

theorem jacobian_criterion_closed_from_evidence
    {R : Type u} [CommRing R] {S : Type v} [CommRing S] [Algebra R S] (J : JacobianCriterionPackage R S) (E : JacobianCriterionEvidence J) :
    JacobianCriterionClosed J := by
  exact And.intro E.kahlerClosed E.criterionSatisfiedClosed

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
