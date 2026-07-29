import ControllabilityVectorFieldsCRealCanonicalLaneLean.ControllabilityCondition

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure SaturationMethodPackage {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} (C : ControllabilityConditionPackage A) where
  saturationProcedure : Prop
  iteratedBracketsClosure : Prop
  finiteSampleCondition : Prop
  convergenceGuaranteed : Prop

structure SaturationMethodEvidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} {C : ControllabilityConditionPackage A} (S : SaturationMethodPackage C) where
  saturationProcedureClosed : S.saturationProcedure
  iteratedBracketsClosureClosed : S.iteratedBracketsClosure
  finiteSampleConditionClosed : S.finiteSampleCondition
  convergenceGuaranteedClosed : S.convergenceGuaranteed

def SaturationMethodClosed {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} {C : ControllabilityConditionPackage A} (S : SaturationMethodPackage C) : Prop :=
  S.saturationProcedure ∧ S.iteratedBracketsClosure ∧ S.finiteSampleCondition ∧ S.convergenceGuaranteed

theorem saturation_method_closed_from_evidence {V : VectorFieldBracketPackage} {L : LieAlgebraStructurePackage V} {A : AccessibleSetPackage L} {C : ControllabilityConditionPackage A} (S : SaturationMethodPackage C) (E : SaturationMethodEvidence S) :
    SaturationMethodClosed S := by
  exact And.intro E.saturationProcedureClosed
    (And.intro E.iteratedBracketsClosureClosed
      (And.intro E.finiteSampleConditionClosed E.convergenceGuaranteedClosed))

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse