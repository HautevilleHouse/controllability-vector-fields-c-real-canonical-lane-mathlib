import ControllabilityVectorFieldsCRealCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControllabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse