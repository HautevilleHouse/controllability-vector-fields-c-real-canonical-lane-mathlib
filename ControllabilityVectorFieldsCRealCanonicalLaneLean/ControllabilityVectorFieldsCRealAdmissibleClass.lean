import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure AdmissibleClass where
  object : VectorFieldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CRealWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse