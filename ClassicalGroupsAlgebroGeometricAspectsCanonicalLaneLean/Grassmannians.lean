import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.ClassicalGroupsDefinition

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure Grassmannian (k : Type) [Field k] [AlgebraicClosure k] where
  n : ℕ
  kDim : ℕ
  variety : AlgebraicVariety k
  pluckerEmbedding : Morphism variety (ProjectiveSpace k (choose n kDim - 1))
  universalBundle : VectorBundle k (kDim) over variety
  tautologicalSubbundle : Subbundle universalBundle

def ProjectiveSpace (k : Type) [Field k] [AlgebraicClosure k] (n : ℕ) : Grassmannian k :=
  { n := n+1
    kDim := 1
    variety := ProjectiveVariety k n
    pluckerEmbedding := Identity
    universalBundle := TautologicalLineBundle
    tautologicalSubbundle := ZeroSection
  }

structure SchubertCalculus (k : Type) [Field k] [AlgebraicClosure k] (Gr : Grassmannian k) where
  schubertVarieties : (λ : Partition) → Subvariety Gr.variety
  cohomologyRing : Ring (Cohomology Gr.variety)
  schubertClasses : (λ : Partition) → Element cohomologyRing
  multiplicationRule : (λ μ : Partition) → schubertClasses λ * schubertClasses μ = Σ_ν c_{λμ}^ν schubertClasses ν
  littlewoodRichardsonRule : c_{λμ}^ν = LittlewoodRichardsonCoefficient λ μ ν

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse
