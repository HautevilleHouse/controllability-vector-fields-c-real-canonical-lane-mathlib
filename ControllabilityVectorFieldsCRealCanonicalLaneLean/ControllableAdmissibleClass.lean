import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityVectorFieldsCRealCanonicalLaneLean.ControllabilityVectorFields

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ControllableAdmissibleClass where
  object : ControllabilityVectorField
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ControllableAdmissibleClass) : Prop :=
  ControllableBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse