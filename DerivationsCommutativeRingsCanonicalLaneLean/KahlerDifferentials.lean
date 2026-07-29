import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivationsCommutativeRingsCanonicalLaneLean.Derivations

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure KahlerDifferentialsPackage (R : Type u) [CommRing R] (S : Type v) [CommRing S] [Algebra R S] where
  module : Type w
  derivation : Derivation S module
  universalProperty : Prop
  baseRing : CommRing R
  extensionRing : CommRing S

structure KahlerDifferentialsEvidence {R : Type u} [CommRing R] {S : Type v} [CommRing S] [Algebra R S] (K : KahlerDifferentialsPackage R S) where
  derivationClosed : DerivationClosed (DerivationPackage.mk S K.module K.derivation K.extensionRing (by infer_instance))
  universalPropertyClosed : K.universalProperty

def KahlerDifferentialsClosed {R : Type u} [CommRing R] {S : Type v} [CommRing S] [Algebra R S] (K : KahlerDifferentialsPackage R S) : Prop :=
  DerivationClosed (DerivationPackage.mk S K.module K.derivation K.extensionRing (by infer_instance)) ∧ K.universalProperty

theorem kahler_differentials_closed_from_evidence
    {R : Type u} [CommRing R] {S : Type v} [CommRing S] [Algebra R S] (K : KahlerDifferentialsPackage R S) (E : KahlerDifferentialsEvidence K) :
    KahlerDifferentialsClosed K := by
  exact And.intro E.derivationClosed E.universalPropertyClosed

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
