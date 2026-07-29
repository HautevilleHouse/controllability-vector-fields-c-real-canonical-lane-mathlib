import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ControlAffineSystem where
  M : Type u
  [TopologicalSpace M]
  [SmoothManifold M]
  vectorFields : List (M → TM)
  controlSet : Set (M → TM)
  distribution : Submodule C∞ M (TM) := Submodule.span (controlSet ∪ vectorFields)

structure ControllabilityDistributionPackage (S : ControlAffineSystem) where
  lieBracketClosedUnderDistribution : Prop
  involutiveClosure : Submodule C∞ M (TM)
  involutivityCondition : involutiveClosure ≤ S.distribution
  frobeniusIntegrability : Prop
  orbitAccessibility : Prop
  controllabilityCondition : Prop

structure ControllabilityDistributionEvidence {S : ControlAffineSystem}
    (C : ControllabilityDistributionPackage S) where
  lieBracketClosedUnderDistributionClosed : C.lieBracketClosedUnderDistribution
  involutivityConditionClosed : C.involutivityCondition
  frobeniusIntegrabilityClosed : C.frobeniusIntegrability
  orbitAccessibilityClosed : C.orbitAccessibility
  controllabilityConditionClosed : C.controllabilityCondition

def ControllabilityDistributionClosed {S : ControlAffineSystem}
    (C : ControllabilityDistributionPackage S) : Prop :=
  C.lieBracketClosedUnderDistribution ∧ C.involutivityCondition ∧
  C.frobeniusIntegrability ∧ C.orbitAccessibility ∧ C.controllabilityCondition

theorem controllability_distribution_closed_from_evidence
    {S : ControlAffineSystem} (C : ControllabilityDistributionPackage S)
    (E : ControllabilityDistributionEvidence C) : ControllabilityDistributionClosed C := by
  exact And.intro E.lieBracketClosedUnderDistributionClosed
    (And.intro E.involutivityConditionClosed
      (And.intro E.frobeniusIntegrabilityClosed
        (And.intro E.orbitAccessibilityClosed E.controllabilityConditionClosed)))

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse