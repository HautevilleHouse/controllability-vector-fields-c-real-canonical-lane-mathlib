import ControllabilityVectorFieldsCRealCanonicalLaneLean.LieBracketReachability

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure SussmannOrbitTheoremPackage {P : ControllabilityVectorFieldPackage}
    (L : LieBracketReachabilityPackage P) where
  orbitStructure : Prop
  accessibilityRank : Prop
  orbitAccessibilityConclusion : Prop

def SussmannOrbitClosed {P : ControllabilityVectorFieldPackage} {L : LieBracketReachabilityPackage P}
    (S : SussmannOrbitTheoremPackage L) : Prop :=
  S.orbitStructure ∧ S.accessibilityRank ∧ S.orbitAccessibilityConclusion

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse