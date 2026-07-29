import ControllabilityVectorFieldsCRealCanonicalLaneLean.ControllabilityVectorFields

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealCanonicalLaneLean

structure LieBracketReachabilityPackage {P : ControllabilityVectorFieldPackage} where
  lieBracketClosure : Prop
  iteratedBrackets : List (P.stateSpace → P.stateSpace)
  spanFullTangentSpace : Prop
  reachableSetOpen : Prop

def LieBracketReachabilityClosed {P : ControllabilityVectorFieldPackage} (L : LieBracketReachabilityPackage P) : Prop :=
  L.lieBracketClosure ∧ L.spanFullTangentSpace ∧ L.reachableSetOpen

end ControllabilityVectorFieldsCRealCanonicalLaneLean
end HautevilleHouse