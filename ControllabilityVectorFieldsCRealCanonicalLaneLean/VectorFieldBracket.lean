import ControllabilityVectorFieldsCRealCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure VectorFieldBracketPackage where
  manifoldType : Type u
  topology : TopologicalSpace manifoldType
  smoothStructure : ContDiffManifold I (𝓘(ℝ, EuclideanSpace ℝ (Fin n))) manifoldType
  vectorFields : Type v
  bracket : vectorFields → vectorFields → vectorFields
  bracketBilinear : Prop
  bracketSkewSymmetric : Prop
  bracketJacobiIdentity : Prop
  bracketSmooth : Prop

structure VectorFieldBracketEvidence (P : VectorFieldBracketPackage) where
  bracketBilinearClosed : P.bracketBilinear
  bracketSkewSymmetricClosed : P.bracketSkewSymmetric
  bracketJacobiIdentityClosed : P.bracketJacobiIdentity
  bracketSmoothClosed : P.bracketSmooth

def VectorFieldBracketClosed (P : VectorFieldBracketPackage) : Prop :=
  P.bracketBilinear ∧ P.bracketSkewSymmetric ∧ P.bracketJacobiIdentity ∧ P.bracketSmooth

theorem vector_field_bracket_closed_from_evidence (P : VectorFieldBracketPackage) (E : VectorFieldBracketEvidence P) :
    VectorFieldBracketClosed P := by
  exact And.intro E.bracketBilinearClosed
    (And.intro E.bracketSkewSymmetricClosed
      (And.intro E.bracketJacobiIdentityClosed E.bracketSmoothClosed))

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse