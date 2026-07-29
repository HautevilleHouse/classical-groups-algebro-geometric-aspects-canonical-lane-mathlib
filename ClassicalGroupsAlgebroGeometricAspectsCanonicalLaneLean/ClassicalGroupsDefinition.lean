import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure ClassicalGroup (k : Type) [Field k] where
  n : ℕ
  type : String -- e.g., "GL", "SL", "PGL", "PSL", "O", "SO", "Sp"
  groupStructure : Group (Matrix (Fin n) (Fin n) k)
  determinantConstraint : Prop
  bilinearFormPreserved : Prop

def LinearGroup (k : Type) [Field k] (n : ℕ) : ClassicalGroup k :=
  { n := n
    type := "GL"
    groupStructure := inferInstance
    determinantConstraint := True
    bilinearFormPreserved := True
  }

def SpecialLinearGroup (k : Type) [Field k] (n : ℕ) : ClassicalGroup k :=
  { n := n
    type := "SL"
    groupStructure := inferInstance
    determinantConstraint := (∀ g : Matrix (Fin n) (Fin n) k, g ∈ LinearGroup k n → g.det = 1)
    bilinearFormPreserved := True
  }

def OrthogonalGroup (k : Type) [Field k] (n : ℕ) : ClassicalGroup k :=
  { n := n
    type := "O"
    groupStructure := inferInstance
    determinantConstraint := True
    bilinearFormPreserved := (∀ g : Matrix (Fin n) (Fin n) k, gᵀ * g = 1)
  }

def SymplecticGroup (k : Type) [Field k] (n : ℕ) : ClassicalGroup k :=
  let J : Matrix (Fin (2*n)) (Fin (2*n)) k := λ i j => if i + n = j then 1 else if i = j + n then -1 else 0
  { n := 2*n
    type := "Sp"
    groupStructure := inferInstance
    determinantConstraint := True
    bilinearFormPreserved := (∀ g : Matrix (Fin (2*n)) (Fin (2*n)) k, gᵀ * J * g = J)
  }

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse
