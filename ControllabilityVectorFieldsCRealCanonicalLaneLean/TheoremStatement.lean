import HautevilleHouse.ControllabilityVectorFieldsCRealCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

def sourceRepository : String :=
  "controllability-vector-fields-c-real-canonical-lane"

def sourceDescription : String :=
  "Controllability of vector fields over C^∞ ℝ^n"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := "controllability-vector-fields-c-real",
    theoremObject := sourceDescription,
    classicalBoundary := "unrestricted_classical_boundary",
    constrainedStatement := "manifold-constrained closure for C^∞ controllability",
    carriedRemainder := "remains open"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_object_checked :
    sourceTheoremStatement.theoremObject = sourceDescription := by
  rfl

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse