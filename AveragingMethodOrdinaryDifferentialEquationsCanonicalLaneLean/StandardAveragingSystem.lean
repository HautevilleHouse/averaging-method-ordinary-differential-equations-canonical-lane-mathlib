import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure StandardAveragingSystem where
  fastTimeScale : Type u
  slowTimeScale : Type v
  fastEquation : fastTimeScale → slowTimeScale → fastTimeScale
  slowEquation : fastTimeScale → slowTimeScale → slowTimeScale
  averagingOperator : (fastTimeScale → slowTimeScale) → (fastTimeScale → slowTimeScale)
  averagingErrorBound : ℝ
  wellDefined : Prop
  wellDefinedTerm : wellDefined

structure StandardAveragingEvidence (S : StandardAveragingSystem) where
  averagingOperatorClosed : S.wellDefined
  averagingErrorBoundClosed : S.averagingErrorBound > 0

def StandardAveragingClosed (S : StandardAveragingSystem) : Prop :=
  S.wellDefined ∧ S.averagingErrorBound > 0

theorem standard_averaging_closed_from_evidence (S : StandardAveragingSystem)
    (E : StandardAveragingEvidence S) : StandardAveragingClosed S := by
  exact And.intro E.averagingOperatorClosed E.averagingErrorBoundClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse