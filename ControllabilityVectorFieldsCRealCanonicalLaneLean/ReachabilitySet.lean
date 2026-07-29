import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ReachabilitySet (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  vectorField : M → ℝ → M
  controlSet : Set (ℝ → ℝ)
  reachableFrom : M → Set M
  positiveTime : Prop
  controlFamilySmooth : Prop
  reachableSetOpen : Prop

structure ReachabilitySetEvidence (RS : ReachabilitySet M) where
  positiveTimeClosed : RS.positiveTime
  controlFamilySmoothClosed : RS.controlFamilySmooth
  reachableSetOpenClosed : RS.reachableSetOpen

def ReachabilitySetClosed (RS : ReachabilitySet M) : Prop :=
  RS.positiveTime ∧ RS.controlFamilySmooth ∧ RS.reachableSetOpen

theorem reachability_set_closed_from_evidence
    (RS : ReachabilitySet M) (E : ReachabilitySetEvidence RS) :
    ReachabilitySetClosed RS := by
  exact And.intro E.positiveTimeClosed (And.intro E.controlFamilySmoothClosed E.reachableSetOpenClosed)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse
