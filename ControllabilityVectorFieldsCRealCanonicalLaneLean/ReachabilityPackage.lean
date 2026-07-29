import HautevilleHouse.ControllabilityVectorFieldsCRealCanonicalLaneLean.ControllabilityVectorFields

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ReachabilityPackage (V : ControllabilityVectorField) where
  reachableSetClosed : Prop
  controllabilityCondition : Prop
  tensorProductControllable : Prop
  realAnalyticControl : Prop

structure ReachabilityEvidence (V : ControllabilityVectorField) (R : ReachabilityPackage V) where
  reachableSetClosedTerm : R.reachableSetClosed
  controllabilityConditionTerm : R.controllabilityCondition
  tensorProductControllableTerm : R.tensorProductControllable
  realAnalyticControlTerm : R.realAnalyticControl

def ReachabilityClosed (V : ControllabilityVectorField) (R : ReachabilityPackage V) : Prop :=
  R.reachableSetClosed ∧ R.controllabilityCondition ∧ R.tensorProductControllable ∧ R.realAnalyticControl

theorem reachability_closed_from_evidence (V : ControllabilityVectorField)
    (R : ReachabilityPackage V) (E : ReachabilityEvidence V R) : ReachabilityClosed V R := by
  exact And.intro E.reachableSetClosedTerm
    (And.intro E.controllabilityConditionTerm
      (And.intro E.tensorProductControllableTerm E.realAnalyticControlTerm))

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse