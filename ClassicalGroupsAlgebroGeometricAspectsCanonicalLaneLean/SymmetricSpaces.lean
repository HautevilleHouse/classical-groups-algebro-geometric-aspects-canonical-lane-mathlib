import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.ClassicalGroupsDefinition

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure SymmetricSpace (k : Type) [Field k] where
  manifold : RiemannianManifold k
  pointSymmetry : (p : manifold) → Isometry manifold manifold
  symmetryProperties : (p : manifold) → (pointSymmetry p)^2 = id ∧ pointSymmetry p has isolated fixed point at p
  groupOfIsometries : LieGroup k
  homogeneousSpace : manifold ≅ G/H where G is groupOfIsometries and H is isotropy subgroup

def RiemannianSymmetricPair (G : LieGroup ℝ) (K : Subgroup G) : Prop :=
  (∃ involution σ : Automorphism G, σ^2 = id ∧ Fix(σ) = K) ∧ (G/K is RiemannianSymmetricSpace)

structure HermitianSymmetricSpace (k : Type) [Field k] where
  symmetricSpace : SymmetricSpace k
  complexStructure : ComplexStructure symmetricSpace.manifold
  kahlerMetrics : KaehlerMetric symmetricSpace.manifold
  classificationType : DynkinType

def TypeAIII (p q : ℕ) : HermitianSymmetricSpace ℂ :=
  { symmetricSpace := SU(p,q) / S(U(p) × U(q))
    complexStructure := CanonicalComplexStructure
    kahlerMetrics := BergmanMetric
    classificationType := DynkinType.A (p+q-1)
  }

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse
