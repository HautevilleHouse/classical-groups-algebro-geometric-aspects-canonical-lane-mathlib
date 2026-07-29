import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.FlagVarieties

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure SchubertCalculusData {C : ClassicalGroupData} {F : FlagVarietyData C} where
  schubertCells : Type u
  cohomologyRing : Type v
  schubertClasses : schubertCells → cohomologyRing
  giambelliFormula : Prop
  pieriRule : Prop
  structureConstants : Prop

structure SchubertCalculusEvidence {C : ClassicalGroupData} {F : FlagVarietyData C} (S : SchubertCalculusData C F) where
  giambelliFormulaClosed : S.giambelliFormula
  pieriRuleClosed : S.pieriRule
  structureConstantsClosed : S.structureConstants

def SchubertCalculusClosed {C : ClassicalGroupData} {F : FlagVarietyData C} (S : SchubertCalculusData C F) : Prop :=
  S.giambelliFormula ∧ S.pieriRule ∧ S.structureConstants

theorem schubert_calculus_closed_from_evidence {C : ClassicalGroupData} {F : FlagVarietyData C} (S : SchubertCalculusData C F) (E : SchubertCalculusEvidence S) : SchubertCalculusClosed S :=
  by
    exact And.intro E.giambelliFormulaClosed
      (And.intro E.pieriRuleClosed E.structureConstantsClosed)

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse