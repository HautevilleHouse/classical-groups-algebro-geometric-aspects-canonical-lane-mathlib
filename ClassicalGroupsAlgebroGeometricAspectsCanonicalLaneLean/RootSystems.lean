import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.ClassicalGroupsDefinition

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure RootSystem (k : Type) [Field k] where
  lieAlgebra : LieAlgebra k
  cartanSubalgebra : Subalgebra lieAlgebra
  roots : Set (Dual cartanSubalgebra)
  rootSpaces : Root → Subspace lieAlgebra
  properties : RootSystemAxioms

inductive DynkinType : Type
  | A (n : ℕ)
  | B (n : ℕ)
  | C (n : ℕ)
  | D (n : ℕ)
  | E6 | E7 | E8 | F4 | G2

structure RootSystemClassical (k : Type) [Field k] (G : ClassicalGroup k) where
  rootSystem : RootSystem k
  type : DynkinType
  coroots : Root → Dual cartanSubalgebra
  weylGroup : Group (Matrix (Fin G.n) (Fin G.n) ℤ)
  classificationProof : TypeOfRootSystem G = type

def RootSystemA_n (k : Type) [Field k] (n : ℕ) : RootSystemClassical k (SpecialLinearGroup k (n+1)) :=
  { rootSystem := RootSystem.sl_(n+1) k
    type := DynkinType.A n
    coroots := λ r => hᵣ
    weylGroup := SymmetricGroup (n+1)
    classificationProof := rfl
  }

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse
