import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

def DerivationEndgameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ DerivationBasicClosed (default : DerivationBasicPackage) ∧ KahlerDifferentialsClosed (default : KahlerDifferentialsPackage)

theorem derivation_endgame_closure (A : AdmissibleClass) :
    DerivationEndgameClosure A := by
  have hBridge : bridgeClosed A := bridge_from_admissible_class A
  have hGate : gateClosed A := gate_from_admissible_class A
  have hBasic : DerivationBasicClosed (default : DerivationBasicPackage) := by
    refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
    · exact trivial
    · exact trivial
    · exact trivial
    · exact trivial
  have hKahler : KahlerDifferentialsClosed (default : KahlerDifferentialsPackage) := by
    refine And.intro ?_ ?_
    · exact trivial
    · exact trivial
  exact And.intro hBridge (And.intro hGate (And.intro hBasic hKahler))

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse