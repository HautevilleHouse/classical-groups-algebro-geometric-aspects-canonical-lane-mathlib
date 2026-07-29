import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.LeviDecomposition

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure RootSystem (G : LinearAlgebraicGroup) where
  cartanSubalgebra : Type u
  rootLattice : Type v
  positiveRoots : Set (rootLattice)
  simpleRoots : Set (rootLattice)
  rank : Nat
  weylGroup : Type w
  satisfiesCartanCriteria : Prop
  rootSpaceDecomposition : Prop
  weylGroupAction : Prop

def rootSystemClosed {G : LinearAlgebraicGroup} (R : RootSystem G) : Prop :=
  R.satisfiesCartanCriteria ∧ R.rootSpaceDecomposition ∧ R.weylGroupAction

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse