import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure SpringerTheoryPackage where
  nilpotentOrbit : Type u
  weylGroupRep : Type v
  springerCorrespondence : Prop
  irreducibleComponents : Prop
  greenFunctions : Prop
  characterFormula : Prop

structure SpringerTheoryEvidence (S : SpringerTheoryPackage) where
  springerCorrespondenceClosed : S.springerCorrespondence
  irreducibleComponentsClosed : S.irreducibleComponents
  greenFunctionsClosed : S.greenFunctions
  characterFormulaClosed : S.characterFormula

def SpringerTheoryClosed (S : SpringerTheoryPackage) : Prop :=
  S.springerCorrespondence ∧ S.irreducibleComponents ∧ S.greenFunctions ∧ S.characterFormula

theorem springer_theory_closed_from_evidence (S : SpringerTheoryPackage)
    (E : SpringerTheoryEvidence S) : SpringerTheoryClosed S := by
  exact And.intro E.springerCorrespondenceClosed
    (And.intro E.irreducibleComponentsClosed
      (And.intro E.greenFunctionsClosed E.characterFormulaClosed))

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse