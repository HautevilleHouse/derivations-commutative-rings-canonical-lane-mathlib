import DerivationsCommutativeRingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def derivationProjection : Projection DerivationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem derivation_projection_idempotent (x : DerivationEndgameState) :
    derivationProjection.toFun (derivationProjection.toFun x) = derivationProjection.toFun x := by
  exact derivationProjection.idempotent x

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse