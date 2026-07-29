import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure LieBracketStructure {S : ControlAffineSystem} where
  vectorFields : List (M → TM)
  bracketMap : (M → TM) → (M → TM) → (M → TM)
  skewSymmetry : ∀ X Y, bracketMap X Y = - bracketMap Y X
  jacobiIdentity : ∀ X Y Z, bracketMap X (bracketMap Y Z) + bracketMap Y (bracketMap Z X) + bracketMap Z (bracketMap X Y) = 0
  lieAlgebraStructure : LieAlgebra ℝ (M → TM)

structure LieBracketClosurePackage {S : ControlAffineSystem}
    (L : LieBracketStructure S) where
  vectorFieldsClosedUnderBracket : Prop
  iteratedBracketsFiniteRank : Prop
  spanOfBracketsIsDistribution : Prop
  adCondition : ∀ X ∈ L.vectorFields, ∀ Y ∈ L.vectorFields, L.bracketMap X Y ∈ Submodule.span L.vectorFields

structure LieBracketClosureEvidence {S : ControlAffineSystem}
    {L : LieBracketStructure S} (C : LieBracketClosurePackage L) where
  vectorFieldsClosedUnderBracketClosed : C.vectorFieldsClosedUnderBracket
  iteratedBracketsFiniteRankClosed : C.iteratedBracketsFiniteRank
  spanOfBracketsIsDistributionClosed : C.spanOfBracketsIsDistribution
  adConditionClosed : C.adCondition

def LieBracketClosureClosed {S : ControlAffineSystem}
    {L : LieBracketStructure S} (C : LieBracketClosurePackage L) : Prop :=
  C.vectorFieldsClosedUnderBracket ∧ C.iteratedBracketsFiniteRank ∧
  C.spanOfBracketsIsDistribution ∧ C.adCondition

theorem lie_bracket_closure_closed_from_evidence
    {S : ControlAffineSystem} {L : LieBracketStructure S}
    (C : LieBracketClosurePackage L) (E : LieBracketClosureEvidence C) :
    LieBracketClosureClosed C := by
  exact And.intro E.vectorFieldsClosedUnderBracketClosed
    (And.intro E.iteratedBracketsFiniteRankClosed
      (And.intro E.spanOfBracketsIsDistributionClosed E.adConditionClosed))

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse