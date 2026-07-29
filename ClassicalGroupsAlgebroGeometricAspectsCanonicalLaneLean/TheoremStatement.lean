import HautevilleHouse.ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "classical-groups-algebro-geometric-aspects",
    theoremName := "Classical Groups Algebro Geometric Aspects",
    theoremObject := "Classification of algebraic group actions on geometric structures",
    classicalBoundary := "Classical group theory and algebro-geometric invariants",
    manifoldConstrainedStatement := "Constrained closure for classical groups algebro-geometric aspects",
    certificateLane := "classical_groups_constrained",
    carriedRemainder := "Classical source boundary; full formalization remains in classical mathematics" }

end ClassicalGroupsAlgebroGeometricAspectsCanonicalLaneLean
end HautevilleHouse