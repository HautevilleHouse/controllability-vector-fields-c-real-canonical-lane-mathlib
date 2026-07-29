import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ControllabilityVectorFieldPackage where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace → controlSpace → stateSpace
  smoothDynamics : Prop
  controlSet : Set controlSpace

def ControllabilityVectorFieldClosed (P : ControllabilityVectorFieldPackage) : Prop :=
  P.smoothDynamics

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse