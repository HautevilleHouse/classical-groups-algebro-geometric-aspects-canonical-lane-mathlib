import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure CharacterVarietyPackage where
  group : Type u
  algebraicGroup : Type u
  representationVariety : Type w
  characterVariety : Type w
  closedPoints : Prop
  irreducibility : Prop
  dimensionComputed : Prop

structure CharacterVarietyEvidence (C : CharacterVarietyPackage) where
  representationVarietyClosed : C.representationVariety = C.representationVariety
  characterVarietyClosed : C.characterVariety = C.characterVariety
  closedPointsClosed : C.closedPoints
  irreducibilityClosed : C.irreducibility
  dimensionComputedClosed : C.dimensionComputed

def CharacterVarietyClosed (C : CharacterVarietyPackage) : Prop :=
  C.closedPoints ∧ C.irreducibility ∧ C.dimensionComputed

theorem character_variety_closed_from_evidence (C : CharacterVarietyPackage)
    (E : CharacterVarietyEvidence C) : CharacterVarietyClosed C := by
  exact And.intro E.closedPointsClosed
    (And.intro E.irreducibilityClosed E.dimensionComputedClosed)

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse