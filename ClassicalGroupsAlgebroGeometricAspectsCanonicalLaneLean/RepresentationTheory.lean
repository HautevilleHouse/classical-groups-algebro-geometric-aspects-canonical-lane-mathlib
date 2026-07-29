import ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.LieAlgebras

/-!
# Representation Theory of Classical Groups
-/

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure RepresentationTheoryPackage (G : GroupSpace) where
  irreducibleRepresentations : Type u
  highestWeightTheory : Prop
  characterFormula : Prop
  dimensionFormula : Prop
  branchRules : Prop
  trivialRepresentation : Prop

structure RepresentationTheoryEvidence {G : GroupSpace}
    (R : RepresentationTheoryPackage G) where
  highestWeightTheoryClosed : R.highestWeightTheory
  characterFormulaClosed : R.characterFormula
  dimensionFormulaClosed : R.dimensionFormula
  branchRulesClosed : R.branchRules
  trivialRepresentationClosed : R.trivialRepresentation

def RepresentationTheoryClosed {G : GroupSpace}
    (R : RepresentationTheoryPackage G) : Prop :=
  R.highestWeightTheory ∧ R.characterFormula ∧ R.dimensionFormula ∧
  R.branchRules ∧ R.trivialRepresentation

theorem representation_theory_closed_from_evidence
    {G : GroupSpace} (R : RepresentationTheoryPackage G)
    (E : RepresentationTheoryEvidence R) : RepresentationTheoryClosed R := by
  exact And.intro E.highestWeightTheoryClosed
    (And.intro E.characterFormulaClosed
      (And.intro E.dimensionFormulaClosed
        (And.intro E.branchRulesClosed E.trivialRepresentationClosed)))

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse