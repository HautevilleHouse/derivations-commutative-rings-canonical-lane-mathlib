import DerivationsCommutativeRingsCanonicalLaneLean.DerivationModule

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure KaehlerDifferential (R : Type u) [CommRing R] (A : Type v) [CommRing A] [Algebra R A] where
  Ω : Type w
  addCommGroup : AddCommGroup Ω
  module : Module A Ω
  d : A →ₗ[R] Ω
  universal : ∀ (M : Type w) [AddCommGroup M] [Module A M] (δ : DerivationModule R M), ∃! φ : Ω →ₗ[A] M, φ ∘ d = δ.deriv

def KaehlerDifferentialClosed {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (K : KaehlerDifferential R A) : Prop :=
  ∀ (M : Type w) [AddCommGroup M] [Module A M] (δ : DerivationModule R M), ∃! φ : K.Ω →ₗ[A] M, φ ∘ K.d = δ.deriv

theorem kaehler_differential_closed {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (K : KaehlerDifferential R A) :
    KaehlerDifferentialClosed K := by
  intro M instAM instM δ
  exact K.universal M δ

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse