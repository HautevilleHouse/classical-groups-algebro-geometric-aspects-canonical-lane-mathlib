import ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroupAdmittedObject where
  space : GroupSpace
  classicalGroup : Prop
  algebraicGroup : Prop
  reductiveGroupModel : Type
  representationTheory : TopologicalSpace reductiveGroupModel
  linearAlgebraicGroup : Prop
  conclusion : linearAlgebraicGroup

structure GroupEndgameState where
  object : GroupAdmittedObject

def GroupWitnessClosed (O : GroupAdmittedObject) : Prop :=
  O.linearAlgebraicGroup

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse