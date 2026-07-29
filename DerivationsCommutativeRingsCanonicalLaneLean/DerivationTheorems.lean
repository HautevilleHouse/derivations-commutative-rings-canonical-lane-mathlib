import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure DerivationBasicPackage where
  derivationExists : Prop
  kernelIsIdeal : Prop
  imageIsSubmodule : Prop
  compositionRule : Prop

deriving instance

structure DerivationBasicEvidence (P : DerivationBasicPackage) where
  derivationExistsClosed : P.derivationExists
  kernelIsIdealClosed : P.kernelIsIdeal
  imageIsSubmoduleClosed : P.imageIsSubmodule
  compositionRuleClosed : P.compositionRule

def DerivationBasicClosed (P : DerivationBasicPackage) : Prop :=
  P.derivationExists ∧ P.kernelIsIdeal ∧ P.imageIsSubmodule ∧ P.compositionRule

theorem derivation_basic_closed_from_evidence (P : DerivationBasicPackage) (E : DerivationBasicEvidence P) :
    DerivationBasicClosed P := by
  exact And.intro E.derivationExistsClosed (And.intro E.kernelIsIdealClosed (And.intro E.imageIsSubmoduleClosed E.compositionRuleClosed))

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse