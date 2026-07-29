import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivationsCommutativeRingsCanonicalLaneLean.Derivations

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure LieAlgebraStructure (R : Type u) [CommRing R] (g : Type v) [AddCommGroup g] [Module R g] where
  bracket : g → g → g
  bilinear : BilinearMap R g g g
  antisymmetric : ∀ x : g, bracket x x = 0
  jacobi : ∀ x y z : g, bracket x (bracket y z) + bracket y (bracket z x) + bracket z (bracket x y) = 0

structure DerivationsLieAlgebraPackage (R : Type u) [CommRing R] (A : Type v) [CommRing A] [Algebra R A] where
  derivationsModule : Module R (Derivation R A)
  lieBracket : Derivation R A → Derivation R A → Derivation R A
  lieAlgebraStructure : LieAlgebraStructure R (Derivation R A)
  commutatorDefinesBracket : ∀ (D1 D2 : Derivation R A), lieBracket D1 D2 = D1.comp D2 - D2.comp D1

structure DerivationsLieAlgebraEvidence {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (L : DerivationsLieAlgebraPackage R A) where
  lieAlgebraStructureClosed : L.lieAlgebraStructure.antisymmetric ∧ L.lieAlgebraStructure.jacobi
  commutatorDefinesBracketClosed : L.commutatorDefinesBracket

def DerivationsLieAlgebraClosed {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (L : DerivationsLieAlgebraPackage R A) : Prop :=
  (L.lieAlgebraStructure.antisymmetric ∧ L.lieAlgebraStructure.jacobi) ∧ L.commutatorDefinesBracket

theorem derivations_lie_algebra_closed_from_evidence
    {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (L : DerivationsLieAlgebraPackage R A) (E : DerivationsLieAlgebraEvidence L) :
    DerivationsLieAlgebraClosed L := by
  exact And.intro E.lieAlgebraStructureClosed E.commutatorDefinesBracketClosed

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
