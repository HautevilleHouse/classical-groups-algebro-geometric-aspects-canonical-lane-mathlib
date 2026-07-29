import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure AlgebraicGroupScheme (k : Type) [Field k] where
  underlyingScheme : Type u
  groupMultiplication : underlyingScheme → underlyingScheme → underlyingScheme
  groupUnit : underlyingScheme
  groupInverse : underlyingScheme → underlyingScheme
  multiplicationAssociative : ∀ x y z : underlyingScheme, groupMultiplication (groupMultiplication x y) z = groupMultiplication x (groupMultiplication y z)
  unitLeft : ∀ x : underlyingScheme, groupMultiplication groupUnit x = x
  unitRight : ∀ x : underlyingScheme, groupMultiplication x groupUnit = x
  inverseLeft : ∀ x : underlyingScheme, groupMultiplication (groupInverse x) x = groupUnit
  inverseRight : ∀ x : underlyingScheme, groupMultiplication x (groupInverse x) = groupUnit
  multiplicationMorphismMorphism : Prop
  unitMorphismClosed : Prop
  inverseMorphismClosed : Prop

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse