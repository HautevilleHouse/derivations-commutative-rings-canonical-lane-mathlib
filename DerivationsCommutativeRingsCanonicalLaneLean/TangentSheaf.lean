import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure TangentSheaf (X : Type u) [TopologicalSpace X] [Scheme X] where
  sheafOfDerivations : SheafOfRings X
  localFreeness : Prop
  rankConstant : Prop
  cotangentExactSequence : Prop

def TangentSheafClosed (T : TangentSheaf ℙ¹) : Prop :=
  T.localFreeness ∧ T.rankConstant ∧ T.cotangentExactSequence

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
