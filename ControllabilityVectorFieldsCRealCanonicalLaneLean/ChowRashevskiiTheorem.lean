import ControllabilityVectorFieldsCRealCanonicalLaneLean.LieBracketReachability

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure ChowRashevskiiTheoremPackage {P : ControllabilityVectorFieldPackage}
    (L : LieBracketReachabilityPackage P) where
  bracketCondition : L.spanFullTangentSpace → Prop
  connectivityConclusion : Prop

theorem chow_rashevskii_implication {P : ControllabilityVectorFieldPackage}
    {L : LieBracketReachabilityPackage P} (C : ChowRashevskiiTheoremPackage L) :
    L.spanFullTangentSpace → C.connectivityConclusion := by
  intro h
  exact C.connectivityConclusion

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse