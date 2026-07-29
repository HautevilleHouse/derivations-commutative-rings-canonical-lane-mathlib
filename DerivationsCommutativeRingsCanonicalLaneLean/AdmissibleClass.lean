import DerivationsCommutativeRingsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure AdmissibleClass where
  object : DerivationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DerivationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse