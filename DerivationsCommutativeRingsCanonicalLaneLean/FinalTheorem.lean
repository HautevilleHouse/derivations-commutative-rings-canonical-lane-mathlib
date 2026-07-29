import DerivationsCommutativeRingsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

def ConstrainedDerivationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_derivation_endgame (A : AdmissibleClass) :
    ConstrainedDerivationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse