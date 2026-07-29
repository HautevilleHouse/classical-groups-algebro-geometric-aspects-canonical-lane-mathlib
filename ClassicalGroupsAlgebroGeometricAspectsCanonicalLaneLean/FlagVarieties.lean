import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.ClassicalGroupsFoundation

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure FlagVarietyData {C : ClassicalGroupData} where
  flags : Type u
  groupAction : C.groupAspect.group → flags → flags
  homogeneousSpace : Prop
  stabilizerParabolic : Prop
  brhatDecomposition : Prop

structure FlagVarietyEvidence {C : ClassicalGroupData} (F : FlagVarietyData C) where
  homogeneousSpaceClosed : F.homogeneousSpace
  stabilizerParabolicClosed : F.stabilizerParabolic
  brhatDecompositionClosed : F.brhatDecomposition

def FlagVarietyClosed {C : ClassicalGroupData} (F : FlagVarietyData C) : Prop :=
  F.homogeneousSpace ∧ F.stabilizerParabolic ∧ F.brhatDecomposition

theorem flag_variety_closed_from_evidence {C : ClassicalGroupData} (F : FlagVarietyData C) (E : FlagVarietyEvidence F) : FlagVarietyClosed F :=
  by
    exact And.intro E.homogeneousSpaceClosed
      (And.intro E.stabilizerParabolicClosed E.brhatDecompositionClosed)

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse