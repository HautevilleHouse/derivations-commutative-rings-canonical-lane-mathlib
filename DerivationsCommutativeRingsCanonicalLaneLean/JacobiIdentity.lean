import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure JacobiIdentity (L : Type u) [LieRing L] where
  bracket : L → L → L
  bilinear : Prop
  skewSymmetric : Prop
  jacobiIdentity : ∀ x y z : L, bracket (bracket x y) z + bracket (bracket y z) x + bracket (bracket z x) y = 0

def JacobiClosed (J : JacobiIdentity ℤ) : Prop :=
  J.bilinear ∧ J.skewSymmetric ∧ J.jacobiIdentity 0 0 0 = 0

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
