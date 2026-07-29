import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure WeylGroup (G : Type u) [Group G] (T : Subgroup G) [T.IsMaximalTorus] where
  rootSystem : Type v
  simpleRoots : Finset rootSystem
  weylGroupGenerators : List (G → G)
  weylGroupRelations : ∀ w : G, w ∈ Subgroup.closure (Set.range (fun (s : weylGroupGenerators) => s)) → w ^ 2 = 1
  lengthFunction : G → ℕ
  longestElement : G
  longestElementUniqueness : ∀ w : G, lengthFunction w = lengthFunction longestElement → w = longestElement

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse