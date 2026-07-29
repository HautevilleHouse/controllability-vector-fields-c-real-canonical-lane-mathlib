import ControllabilityVectorFieldsCRealCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VectorFieldSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VectorFieldAdmittedObject where
  space : VectorFieldSpace
  smoothVectorField : Prop
  reachableSet : Prop
  controllabilityProperty : Prop
  conclusion : controllabilityProperty

structure CRealEndgameState where
  object : VectorFieldAdmittedObject

def CRealWitnessClosed (O : VectorFieldAdmittedObject) : Prop :=
  O.controllabilityProperty

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse