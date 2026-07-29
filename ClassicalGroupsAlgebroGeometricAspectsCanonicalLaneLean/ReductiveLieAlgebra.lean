import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure ReductiveLieAlgebraPackage where
  lieAlgebra : Type u
  bracket : lieAlgebra → lieAlgebra → lieAlgebra
  killingForm : lieAlgebra → lieAlgebra → ℝ
  semisimple : Prop
  reductive : Prop
  centerDimension : ℕ
  killingNondegenerate : Prop

structure ReductiveLieAlgebraEvidence (L : ReductiveLieAlgebraPackage) where
  semisimpleClosed : L.semisimple
  reductiveClosed : L.reductive
  killingNondegenerateClosed : L.killingNondegenerate

def ReductiveLieAlgebraClosed (L : ReductiveLieAlgebraPackage) : Prop :=
  L.semisimple ∧ L.reductive ∧ L.killingNondegenerate

theorem reductive_lie_algebra_closed_from_evidence (L : ReductiveLieAlgebraPackage)
    (E : ReductiveLieAlgebraEvidence L) : ReductiveLieAlgebraClosed L := by
  exact And.intro E.semisimpleClosed (And.intro E.reductiveClosed E.killingNondegenerateClosed)

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse