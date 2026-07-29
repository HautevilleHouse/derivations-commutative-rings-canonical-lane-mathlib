import DerivationsCommutativeRingsCanonicalLaneLean.DerivationModule

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure DerivationAlgebra (R : Type u) [CommRing R] (A : Type v) [CommRing A] [Algebra R A] where
  deriv : A →ₗ[R] A
  leibniz : ∀ a b : A, deriv (a * b) = a • deriv b + b • deriv a

def DerivationAlgebraClosed {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (D : DerivationAlgebra R A) : Prop :=
  ∀ a b : A, D.deriv (a * b) = a • D.deriv b + b • D.deriv a

theorem derivation_algebra_closed {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (D : DerivationAlgebra R A) :
    DerivationAlgebraClosed D := by
  intro a b
  exact D.leibniz a b

structure DerivationAlgebraEvidence {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (D : DerivationAlgebra R A) where
  leibnizClosed : DerivationAlgebraClosed D

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse