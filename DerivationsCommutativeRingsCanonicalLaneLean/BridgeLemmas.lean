import DerivationsCommutativeRingsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DerivationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse