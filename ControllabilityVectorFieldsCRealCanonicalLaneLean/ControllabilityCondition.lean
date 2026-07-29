import ControllabilityVectorFieldsCRealCanonicalLaneLean.AccessibleSet

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ControllabilityConditionPackage {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} (A : AccessibleSetPackage L) where
  controllabilityCriterion : Prop
  accessibleSetEqualsWholeManifold : Prop
  bracketGenerating : Prop
  rankCondition : Prop

structure ControllabilityConditionEvidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} (C : ControllabilityConditionPackage A) where
  controllabilityCriterionClosed : C.controllabilityCriterion
  accessibleSetEqualsWholeManifoldClosed : C.accessibleSetEqualsWholeManifold
  bracketGeneratingClosed : C.bracketGenerating
  rankConditionClosed : C.rankCondition

def ControllabilityConditionClosed {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} (C : ControllabilityConditionPackage A) : Prop :=
  C.controllabilityCriterion ∧ C.accessibleSetEqualsWholeManifold ∧ C.bracketGenerating ∧ C.rankCondition

theorem controllability_condition_closed_from_evidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} (C : ControllabilityConditionPackage A) (E : ControllabilityConditionEvidence C) :
    ControllabilityConditionClosed C := by
  exact And.intro E.controllabilityCriterionClosed
    (And.intro E.accessibleSetEqualsWholeManifoldClosed
      (And.intro E.bracketGeneratingClosed E.rankConditionClosed))

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse