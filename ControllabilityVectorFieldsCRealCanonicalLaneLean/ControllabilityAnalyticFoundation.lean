import HautevilleHouse.ControllabilityVectorFieldsCRealCanonicalLaneLean.ReachabilityPackage
import HautevilleHouse.ControllabilityVectorFieldsCRealCanonicalLaneLean.LieBracketPackage

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ControllabilityAnalyticFoundation where
  vectorField : ControllabilityVectorField
  reachability : ReachabilityPackage vectorField
  reachabilityEvidence : ReachabilityEvidence vectorField reachability
  lieBracket : LieBracketPackage vectorField
  lieBracketEvidence : LieBracketEvidence vectorField lieBracket

def ControllabilityAnalyticFoundationClosed (A : ControllabilityAnalyticFoundation) : Prop :=
  ReachabilityClosed A.vectorField A.reachability ∧ LieBracketClosed A.vectorField A.lieBracket

theorem controllability_analytic_foundation_closed_from_evidence
    (A : ControllabilityAnalyticFoundation) : ControllabilityAnalyticFoundationClosed A := by
  exact And.intro (reachability_closed_from_evidence A.vectorField A.reachability A.reachabilityEvidence)
    (lie_bracket_closed_from_evidence A.vectorField A.lieBracket A.lieBracketEvidence)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse