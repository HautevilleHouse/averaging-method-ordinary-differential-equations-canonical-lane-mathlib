import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AveragingSystem

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure PerturbationAnalysis {S : AveragingSystem} where
  expansionOrder : ℕ
  residualBound : ℝ
  truncationError : ℝ
  expansionValid : Prop
  residualBoundValid : Prop
  truncationControlled : Prop

structure PerturbationAnalysisEvidence {S : AveragingSystem}
    (P : PerturbationAnalysis S) where
  expansionValidClosed : P.expansionValid
  residualBoundValidClosed : P.residualBoundValid
  truncationControlledClosed : P.truncationControlled

def PerturbationAnalysisClosed {S : AveragingSystem}
    (P : PerturbationAnalysis S) : Prop :=
  P.expansionValid ∧ P.residualBoundValid ∧ P.truncationControlled

theorem perturbation_analysis_closed_from_evidence
    {S : AveragingSystem} (P : PerturbationAnalysis S)
    (E : PerturbationAnalysisEvidence P) : PerturbationAnalysisClosed P := by
  exact And.intro E.expansionValidClosed
    (And.intro E.residualBoundValidClosed E.truncationControlledClosed)

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
