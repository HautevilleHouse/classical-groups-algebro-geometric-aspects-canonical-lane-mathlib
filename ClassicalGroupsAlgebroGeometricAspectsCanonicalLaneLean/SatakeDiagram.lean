import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure SatakeDiagramPackage where
  realLieAlgebra : Type u
  rootSystem : Type v
  satakeDiagram : Type w
  realFormClassified : Prop
  anisotropicKernel : Prop
  rootDatum : Prop

structure SatakeDiagramEvidence (S : SatakeDiagramPackage) where
  realFormClassifiedClosed : S.realFormClassified
  anisotropicKernelClosed : S.anisotropicKernel
  rootDatumClosed : S.rootDatum

def SatakeDiagramClosed (S : SatakeDiagramPackage) : Prop :=
  S.realFormClassified ∧ S.anisotropicKernel ∧ S.rootDatum

theorem satake_diagram_closed_from_evidence (S : SatakeDiagramPackage)
    (E : SatakeDiagramEvidence S) : SatakeDiagramClosed S := by
  exact And.intro E.realFormClassifiedClosed
    (And.intro E.anisotropicKernelClosed E.rootDatumClosed)

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse