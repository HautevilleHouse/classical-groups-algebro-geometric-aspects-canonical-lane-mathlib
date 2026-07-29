import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.ClassicalGroupsDefinition

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure Representation (k : Type) [Field k] (G : ClassicalGroup k) where
  vectorSpace : VectorSpace k
  action : G.groupStructure → Automorphism vectorSpace
  isLinear : ∀ g, (action g) is LinearMap
  irreducible : Prop

def StandardRepresentation (k : Type) [Field k] (n : ℕ) : Representation k (LinearGroup k n) :=
  { vectorSpace := VectorSpace.k^n
    action := λ g v => g * v
    isLinear := by trivial
    irreducible := true
  }

structure InvariantRing (k : Type) [Field k] (G : ClassicalGroup k) (V : Representation k G) where
  polynomialRing : Ring (SymmetricAlgebra V.vectorSpace)
  invariants : Subring polynomialRing
  hilbertSeries : FormalPowerSeries ℤ
  generators : List (Element invariants)
  relations : Ideal (FreeAlgebra k generators)
  syzygy : FreeResolution k invariants

def FirstFundamentalTheorem (k : Type) [Field k] (n : ℕ) : InvariantRing k (OrthogonalGroup k n) (StandardRepresentation k n) :=
  { polynomialRing := SymmetricAlgebra (k^n)
    invariants := Subring.generatedBy [∑_i x_i^2]
    hilbertSeries := (1 + t) / (1 - t)^(n)
    generators := [∑_i x_i^2]
    relations := Ideal.zero
    syzygy := Trivial
  }

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse
