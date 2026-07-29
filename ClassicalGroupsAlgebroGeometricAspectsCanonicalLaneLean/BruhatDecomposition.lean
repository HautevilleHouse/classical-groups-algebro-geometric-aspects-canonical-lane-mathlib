import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure BruhatDecomposition (G : Type u) [Group G] (B : Subgroup G) (W : WeylGroup G (Subgroup.complement?)) where
  doubleCosets : Finset (Set (G × G))
  decomposition : ∀ g : G, ∃ (b1 b2 : B) (w : W), g = b1 * w * b2
  uniqueness : ∀ (g : G) (b1 b2 : B) (w1 w2 : W), g = b1 * w1 * b2 → g = b1' * w2 * b2' → w1 = w2
  cellDimensions : W → ℕ
  closureRelations : Prop
  cellClosure : Prop

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse