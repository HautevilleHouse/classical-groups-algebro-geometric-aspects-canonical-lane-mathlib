import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.LinearAlgebraicGroup

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure ParabolicSubgroup (G : LinearAlgebraicGroup) where
  borelSubgroup : Prop
  flagVariety : Type w
  isClosedInZariski : Prop
  normalizerCondition : Prop

def parabolicSubgroupClosed {G : LinearAlgebraicGroup} (P : ParabolicSubgroup G) : Prop :=
  P.borelSubgroup ∧ P.isClosedInZariski ∧ P.normalizerCondition

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse