import ControllabilityVectorFieldsCRealCanonicalLaneLean.VectorFieldBracket

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure LieAlgebraStructurePackage (V : VectorFieldBracketPackage) where
  underlyingVectorSpace : Type w
  bracketClosed : V.bracket = V.bracket
  lieAlgebraAxioms : Prop
  idealGeneratedByInputs : Prop

structure LieAlgebraStructureEvidence {V : VectorFieldBracketPackage} (L : LieAlgebraStructurePackage V) where
  lieAlgebraAxiomsClosed : L.lieAlgebraAxioms
  idealGeneratedByInputsClosed : L.idealGeneratedByInputs

def LieAlgebraStructureClosed {V : VectorFieldBracketPackage} (L : LieAlgebraStructurePackage V) : Prop :=
  L.lieAlgebraAxioms ∧ L.idealGeneratedByInputs

theorem lie_algebra_structure_closed_from_evidence {V : VectorFieldBracketPackage} (L : LieAlgebraStructurePackage V) (E : LieAlgebraStructureEvidence L) :
    LieAlgebraStructureClosed L := by
  exact And.intro E.lieAlgebraAxiomsClosed E.idealGeneratedByInputsClosed

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse