import HautevilleHouse.AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure AveragingMethodTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceAveragingTheoremStatement : AveragingMethodTheoremStatement :=
  { sourceKey := "averaging-method-ordinary-differential-equations-canonical-lane",
    theoremName := "Averaging Method ODEs",
    theoremObject := "Averaging method for fast periodic forcing",
    classicalBoundary := "classical source boundary carried by formalization certificate",
    manifoldConstrainedStatement := "averaging method admissible-class closure",
    certificateLane := "manifold_constrained",
    carriedRemainder := "theorem-specific averaging endgame pilot closes over the admitted class; unrestricted classical closure remains carried" }

theorem averaging_theorem_statement_defined :
    sourceAveragingTheoremStatement.sourceKey = "averaging-method-ordinary-differential-equations-canonical-lane" := by
  rfl

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse