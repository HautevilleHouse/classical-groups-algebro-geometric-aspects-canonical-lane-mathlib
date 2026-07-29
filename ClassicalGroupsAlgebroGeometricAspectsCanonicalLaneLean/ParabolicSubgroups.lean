import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.ClassicalGroupsDefinition

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure ParabolicSubgroup (k : Type) [Field k] [AlgebraicClosure k] (G : ClassicalGroup k) where
  subgroup : Subgroup G.groupStructure
  borelSubgroup : ContainsBorel subgroup
  parabolicType : List ℕ -- simple roots omitted
  flagVariety : FlagVariety k
  correspondence : ParabolicSubgroups G ↔ Subsets SimpleRoots(G)

def BorelSubgroup (k : Type) [Field k] [AlgebraicClosure k] (G : ClassicalGroup k) : ParabolicSubgroup k G :=
  { subgroup := UpperTriangularMatrices G.n
    borelSubgroup := by trivial
    parabolicType := []
    flagVariety := CompleteFlagVariety k G.n
    correspondence := λ P => Empty
  }

structure LeviDecomposition (k : Type) [Field k] [AlgebraicClosure k] (P : ParabolicSubgroup k G) where
  leviFactor : Subgroup P.subgroup
  unipotentRadical : NormalSubgroup P.subgroup
  semidirectProduct : P.subgroup ≅ leviFactor ⋉ unipotentRadical
  reductive : leviFactor is Reductive

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse
