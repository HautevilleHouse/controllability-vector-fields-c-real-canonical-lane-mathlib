import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

def ConstrainedControllabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_controllability_endgame (A : AdmissibleClass) :
    ConstrainedControllabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse