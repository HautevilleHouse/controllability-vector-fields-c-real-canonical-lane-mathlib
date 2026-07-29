import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure AdmissibleClass where
  object : ControllabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControllabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse