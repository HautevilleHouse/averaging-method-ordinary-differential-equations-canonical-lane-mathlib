import canonicalLaneMathlib.AdmissibleClass
import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure AveragingTheoremPackage (A : AdmissibleClass) where
  averagedSystem : A.object.stateSpace → ℝ → A.object.stateSpace
  closenessEstimate : Prop
  timeScale : ℝ
  averagingCondition : Prop
  averagingConditionClosed : averagingCondition
  closenessEstimateClosed : closenessEstimate

structure AveragingTheoremEvidence (A : AdmissibleClass) (P : AveragingTheoremPackage A) where
  averagingConditionClosed : P.averagingCondition
  closenessEstimateClosed : P.closenessEstimate

def AveragingTheoremClosed (A : AdmissibleClass) (P : AveragingTheoremPackage A) : Prop :=
  P.averagingCondition ∧ P.closenessEstimate

theorem averaging_theorem_closed_from_evidence (A : AdmissibleClass) (P : AveragingTheoremPackage A)
    (E : AveragingTheoremEvidence A P) : AveragingTheoremClosed A P := by
  exact And.intro E.averagingConditionClosed E.closenessEstimateClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
