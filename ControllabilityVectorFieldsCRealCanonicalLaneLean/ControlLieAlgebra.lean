import ControllabilityVectorFieldsCRealCanonicalLaneLean.SaturationMethod

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ControlLieAlgebraPackage {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} {C : ControllabilityConditionPackage A} (S : SaturationMethodPackage C) where
  generatingVectorFields : List V.vectorFields
  lieAlgebraGenerated : Prop
  saturationClosed : Prop
  controllabilityEquivalent : Prop

structure ControlLieAlgebraEvidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} {C : ControllabilityConditionPackage A} {S : SaturationMethodPackage C} (G : ControlLieAlgebraPackage S) where
  lieAlgebraGeneratedClosed : G.lieAlgebraGenerated
  saturationClosedClosed : G.saturationClosed
  controllabilityEquivalentClosed : G.controllabilityEquivalent

def ControlLieAlgebraClosed {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} {C : ControllabilityConditionPackage A} {S : SaturationMethodPackage C} (G : ControlLieAlgebraPackage S) : Prop :=
  G.lieAlgebraGenerated ∧ G.saturationClosed ∧ G.controllabilityEquivalent

theorem control_lie_algebra_closed_from_evidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} {C : ControllabilityConditionPackage A} {S : SaturationMethodPackage C} (G : ControlLieAlgebraPackage S) (E : ControlLieAlgebraEvidence G) :
    ControlLieAlgebraClosed G := by
  exact And.intro E.lieAlgebraGeneratedClosed
    (And.intro E.saturationClosedClosed E.controllabilityEquivalentClosed)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse