import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure AlgebraicGroupAspect where
  group : Type u
  algebraicStructure : Prop
  representationType : Type v
  representation : group → representationType
  isGroupHomomorphism : ∀ g h : group, representation (g * h) = representation g * representation h

structure ClassicalGroupData where
  groupAspect : AlgebraicGroupAspect
  baseField : Type w
  characteristic : Prop
  dimension : Nat
  isConnected : Prop
  isReductive : Prop

structure ClassicalGroupEvidence (C : ClassicalGroupData) where
  algebraicStructureClosed : C.groupAspect.algebraicStructure
  representationClosed : ∀ g h : C.groupAspect.group, C.groupAspect.representation (g * h) = C.groupAspect.representation g * C.groupAspect.representation h
  baseFieldClosed : C.characteristic
  connectedClosed : C.isConnected
  reductiveClosed : C.isReductive

def ClassicalGroupClosed (C : ClassicalGroupData) : Prop :=
  C.groupAspect.algebraicStructure ∧
  (∀ g h : C.groupAspect.group, C.groupAspect.representation (g * h) = C.groupAspect.representation g * C.groupAspect.representation h) ∧
  C.characteristic ∧ C.isConnected ∧ C.isReductive

theorem classical_group_closed_from_evidence (C : ClassicalGroupData) (E : ClassicalGroupEvidence C) : ClassicalGroupClosed C :=
  by
    exact And.intro E.algebraicStructureClosed
      (And.intro E.representationClosed
        (And.intro E.baseFieldClosed (And.intro E.connectedClosed E.reductiveClosed)))

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse