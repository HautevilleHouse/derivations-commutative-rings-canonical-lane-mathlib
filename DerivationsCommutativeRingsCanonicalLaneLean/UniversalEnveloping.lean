import canonicalLaneMathlib.AdmissibleClass

/-! # Universal Enveloping Algebra Package -/

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure UniversalEnvelopingData where
  D : DerivationData
  envelopingRing : Type
  canonicalMap : D.carrierRing → envelopingRing
  universalProperty : Prop

structure UniversalEnvelopingPackage where
  U : UniversalEnvelopingData
  universalPropertyClosed : Prop

structure UniversalEnvelopingEvidence (U : UniversalEnvelopingPackage) where
  universalPropertyTerm : U.universalPropertyClosed

def UniversalEnvelopingClosed (U : UniversalEnvelopingPackage) : Prop :=
  U.universalPropertyClosed

theorem universal_enveloping_closed_from_evidence (U : UniversalEnvelopingPackage) (E : UniversalEnvelopingEvidence U) :
    UniversalEnvelopingClosed U := by
  exact E.universalPropertyTerm

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse