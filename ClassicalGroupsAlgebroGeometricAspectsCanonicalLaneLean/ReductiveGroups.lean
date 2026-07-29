import ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.RepresentationTheory

/-!
# Reductive Groups Over Algebraically Closed Fields
-/

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure ReductiveGroupPackage {G : GroupSpace} {R : RepresentationTheoryPackage G} where
  reductive : Prop
  maximalTorus : Prop
  rootSystem : Prop
  weylGroup : Prop
  parabolicSubgroupsClassified : Prop
  leviSubgroupsClassified : Prop

structure ReductiveGroupEvidence {G : GroupSpace} {R : RepresentationTheoryPackage G}
    (RGP : ReductiveGroupPackage) where
  reductiveClosed : RGP.reductive
  maximalTorusClosed : RGP.maximalTorus
  rootSystemClosed : RGP.rootSystem
  weylGroupClosed : RGP.weylGroup
  parabolicSubgroupsClassifiedClosed : RGP.parabolicSubgroupsClassified
  leviSubgroupsClassifiedClosed : RGP.leviSubgroupsClassified

def ReductiveGroupClosed {G : GroupSpace} {R : RepresentationTheoryPackage G}
    (RGP : ReductiveGroupPackage) : Prop :=
  RGP.reductive ∧ RGP.maximalTorus ∧ RGP.rootSystem ∧ RGP.weylGroup ∧
  RGP.parabolicSubgroupsClassified ∧ RGP.leviSubgroupsClassified

theorem reductive_group_closed_from_evidence
    {G : GroupSpace} {R : RepresentationTheoryPackage G}
    (RGP : ReductiveGroupPackage) (E : ReductiveGroupEvidence RGP) :
    ReductiveGroupClosed RGP := by
  exact And.intro E.reductiveClosed
    (And.intro E.maximalTorusClosed
      (And.intro E.rootSystemClosed
        (And.intro E.weylGroupClosed
          (And.intro E.parabolicSubgroupsClassifiedClosed
            E.leviSubgroupsClassifiedClosed))))

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse