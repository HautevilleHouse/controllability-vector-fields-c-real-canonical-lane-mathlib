import HautevilleHouse.ControllabilityVectorFieldsCRealCanonicalLaneLean.ControllabilityVectorFields

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure LieBracketPackage (V : ControllabilityVectorField) where
  zeroBracketCondition : Prop
  linearCombinationBracket : Prop
  jacobiIdentity : Prop
  spanClosed : Prop

structure LieBracketEvidence (V : ControllabilityVectorField) (L : LieBracketPackage V) where
  zeroBracketConditionTerm : L.zeroBracketCondition
  linearCombinationBracketTerm : L.linearCombinationBracket
  jacobiIdentityTerm : L.jacobiIdentity
  spanClosedTerm : L.spanClosed

def LieBracketClosed (V : ControllabilityVectorField) (L : LieBracketPackage V) : Prop :=
  L.zeroBracketCondition ∧ L.linearCombinationBracket ∧ L.jacobiIdentity ∧ L.spanClosed

theorem lie_bracket_closed_from_evidence (V : ControllabilityVectorField)
    (L : LieBracketPackage V) (E : LieBracketEvidence V L) : LieBracketClosed V L := by
  exact And.intro E.zeroBracketConditionTerm
    (And.intro E.linearCombinationBracketTerm
      (And.intro E.jacobiIdentityTerm E.spanClosedTerm))

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse