import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DerivationsCommutativeRingsCanonicalLaneLean.DerivationModule

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure HochschildHomologyPackage {R : Type u} [CommRing R] (A : Type v) [CommRing A] [Algebra R A] where
  chainComplex : Type w
  homologyGroups : Type x
  hochschildComplexClosed : Prop
  hochschildComplexClosedTerm : hochschildComplexClosed

def HochschildHomologyClosed {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (H : HochschildHomologyPackage R A) : Prop :=
  H.hochschildComplexClosed

theorem hochschild_homology_closed_from_evidence {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] (H : HochschildHomologyPackage R A) : HochschildHomologyClosed H := by
  exact H.hochschildComplexClosedTerm

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse