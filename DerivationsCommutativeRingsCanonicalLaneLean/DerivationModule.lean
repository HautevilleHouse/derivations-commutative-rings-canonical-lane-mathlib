import DerivationsCommutativeRingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure DerivationModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  deriv : M →ₗ[R] M
  leibniz : ∀ a b : M, deriv (a * b) = a • deriv b + b • deriv a

def DerivationModuleClosed {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] (D : DerivationModule R M) : Prop :=
  ∀ a b : M, D.deriv (a * b) = a • D.deriv b + b • D.deriv a

theorem derivation_module_closed {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] (D : DerivationModule R M) :
    DerivationModuleClosed D := by
  intro a b
  exact D.leibniz a b

structure DerivationModuleEvidence {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] (D : DerivationModule R M) where
  leibnizClosed : DerivationModuleClosed D

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse