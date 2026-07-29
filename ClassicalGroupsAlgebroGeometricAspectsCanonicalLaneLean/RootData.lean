import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure RootData (V : Type u) [AddCommGroup V] [Module ℝ V] where
  rootSystem : Finset V
  rootLattice : AddSubgroup V
  rank : ℕ
  positiveRoots : Finset V
  simpleRoots : Finset V
  cartanMatrix : Matrix (Fin rank) (Fin rank) ℤ
  bilinearForm : V → V → ℝ
  rootReflection : V → (V → V)
  weylGroupAction : Prop
  rootSystemClosedUnderReflection : ∀ α β : V, α ∈ rootSystem → rootReflection α β ∈ rootSystem
  rootSystemFinite : rootSystem.Finite
  rootSystemSpanRootLattice : Submodule.span ℝ (rootSystem : Set V) = ⊤

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse