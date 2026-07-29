import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.ParabolicSubgroup

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure LeviDecomposition {G : LinearAlgebraicGroup} (P : ParabolicSubgroup G) where
  leviFactor : Type u
  unipotentRadical : Type v
  semidirectProduct : Prop
  leviFactorReductive : Prop
  unipotentRadicalNilpotent : Prop

def leviDecompositionClosed {G : LinearAlgebraicGroup} {P : ParabolicSubgroup G} (L : LeviDecomposition P) : Prop :=
  L.semidirectProduct ∧ L.leviFactorReductive ∧ L.unipotentRadicalNilpotent

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse