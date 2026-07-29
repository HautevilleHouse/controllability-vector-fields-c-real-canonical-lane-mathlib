import ControllabilityVectorFieldsCRealCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def crealProjection : Projection CRealEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem creal_projection_idempotent (x : CRealEndgameState) :
    crealProjection.toFun (crealProjection.toFun x) = crealProjection.toFun x := by
  exact crealProjection.idempotent x

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse