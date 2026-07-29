import ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def groupProjection : Projection GroupEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem group_projection_idempotent (x : GroupEndgameState) :
    groupProjection.toFun (groupProjection.toFun x) = groupProjection.toFun x := by
  exact groupProjection.idempotent x

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse