import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure FlagVariety (V : Type u) [AddCommGroup V] [Module k V] (k : Type) [Field k] where
  flagLength : ℕ
  flag : List (Submodule k V)
  strictInclusion : ∀ i : Fin (flagLength - 1), flag.get? (i.val) < flag.get? (i.val.succ)
  dimensionSequence : List ℕ
  stabilizerSubgroup : Type v
  stabilizerIsParabolic : Prop
  flagVarietyIsProjective : Prop

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse