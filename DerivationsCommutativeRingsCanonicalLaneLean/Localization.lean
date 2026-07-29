import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivationsCommutativeRingsCanonicalLaneLean.Derivations

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure LocalizationPackage (R : Type u) [CommRing R] (S : Submonoid R) where
  localizedRing : Type v
  localizationMap : R →+* localizedRing
  isLocalization : IsLocalization S localizedRing
  extensionDerivation : Prop

structure LocalizationEvidence (R : Type u) [CommRing R] {S : Submonoid R} (L : LocalizationPackage R S) where
  extensionDerivationClosed : L.extensionDerivation
  localizationMapClosed : Function.Surjective L.localizationMap

def LocalizationClosed {R : Type u} [CommRing R] {S : Submonoid R} (L : LocalizationPackage R S) : Prop :=
  L.extensionDerivation ∧ Function.Surjective L.localizationMap

theorem localization_closed_from_evidence
    {R : Type u} [CommRing R] {S : Submonoid R} (L : LocalizationPackage R S) (E : LocalizationEvidence L) :
    LocalizationClosed L := by
  exact And.intro E.extensionDerivationClosed E.localizationMapClosed

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
