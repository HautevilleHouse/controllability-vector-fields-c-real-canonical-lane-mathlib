import ControllabilityVectorFieldsCRealCanonicalLaneLean.LieAlgebraStructure

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure AccessibleSetPackage {V : VectorFieldBracketPackage} (L : LieAlgebraStructurePackage V) where
  manifoldType : Type u
  topology : TopologicalSpace manifoldType
  controlSystem : Prop
  accessibleSet : Set manifoldType
  reachableFromPoint : Prop
  invarianceUnderBracket : Prop
  openDenseCondition : Prop

structure AccessibleSetEvidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} (A : AccessibleSetPackage L) where
  reachableFromPointClosed : A.reachableFromPoint
  invarianceUnderBracketClosed : A.invarianceUnderBracket
  openDenseConditionClosed : A.openDenseCondition

def AccessibleSetClosed {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} (A : AccessibleSetPackage L) : Prop :=
  A.reachableFromPoint ∧ A.invarianceUnderBracket ∧ A.openDenseCondition

theorem accessible_set_closed_from_evidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} (A : AccessibleSetPackage L) (E : AccessibleSetEvidence A) :
    AccessibleSetClosed A := by
  exact And.intro E.reachableFromPointClosed
    (And.intro E.invarianceUnderBracketClosed E.openDenseConditionClosed)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse