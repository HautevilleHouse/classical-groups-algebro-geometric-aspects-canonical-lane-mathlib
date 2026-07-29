import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure LinearAlgebraicGroup where
  baseField : Type u
  vectorSpace : Type v
  groupAction : vectorSpace → vectorSpace
  isLinear : Prop
  isAlgebraic : Prop
  isClosedUnderMultiplication : Prop
  preservesDeterminant : Prop

def linearAlgebraicGroupClosed (G : LinearAlgebraicGroup) : Prop :=
  G.isLinear ∧ G.isAlgebraic ∧ G.isClosedUnderMultiplication ∧ G.preservesDeterminant

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse