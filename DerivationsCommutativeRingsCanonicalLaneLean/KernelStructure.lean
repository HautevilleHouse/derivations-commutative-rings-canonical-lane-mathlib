import canonicalLaneMathlib.AdmissibleClass

/-! # Kernel Structure Package -/

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure KernelStructure where
  D : DerivationData
  kernelSet : Set D.carrierRing
  subringProperty : Subring D.carrierRing

structure KernelEvidence (K : KernelStructure) where
  kernelIsSubringClosed : Prop

def KernelClosed (K : KernelStructure) : Prop :=
  K.kernelSet = (K.subringProperty : Set D.carrierRing)

theorem kernel_closed_from_evidence (K : KernelStructure) (E : KernelEvidence K) :
    KernelClosed K := by
  exact E.kernelIsSubringClosed

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse