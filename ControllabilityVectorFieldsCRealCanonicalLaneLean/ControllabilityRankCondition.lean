import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure RankConditionPackage {S : ControlAffineSystem}
    (D : ControllabilityDistributionPackage S) where
  dimensionM : ℕ
  rankOfDistribution : ℕ
  rankCondition : rankOfDistribution = dimensionM
  basisGiven : Basis (Fin rankOfDistribution) ℝ (M → TM)
  distributionFullRank : Prop

structure RankConditionEvidence {S : ControlAffineSystem}
    {D : ControllabilityDistributionPackage S}
    (R : RankConditionPackage D) where
  rankConditionClosed : R.rankCondition
  distributionFullRankClosed : R.distributionFullRank

def RankConditionClosed {S : ControlAffineSystem}
    {D : ControllabilityDistributionPackage S}
    (R : RankConditionPackage D) : Prop :=
  R.rankCondition ∧ R.distributionFullRank

theorem rank_condition_closed_from_evidence
    {S : ControlAffineSystem} {D : ControllabilityDistributionPackage S}
    (R : RankConditionPackage D) (E : RankConditionEvidence R) :
    RankConditionClosed R := by
  exact And.intro E.rankConditionClosed E.distributionFullRankClosed

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse