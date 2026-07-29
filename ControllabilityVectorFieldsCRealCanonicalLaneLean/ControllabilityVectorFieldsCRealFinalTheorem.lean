import ControllabilityVectorFieldsCRealCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

def ConstrainedCRealClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_creal_endgame (A : AdmissibleClass) :
    ConstrainedCRealClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse