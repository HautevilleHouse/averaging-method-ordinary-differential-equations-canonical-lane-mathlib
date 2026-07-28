import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.StandardAveragingSystem

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure AveragingErrorEstimates {S : StandardAveragingSystem} where
  timeInterval : ℝ → ℝ
  initialCondition : S.fastTimeScale × S.slowTimeScale
  errorBound : ℝ
  lyapunovExponent : ℝ
  errorInequality : Prop
  errorInequalityTerm : errorInequality

structure AveragingErrorEvidence {S : StandardAveragingSystem}
    (E : AveragingErrorEstimates S) where
  errorInequalityClosed : E.errorInequality
  lyapunovExponentClosed : E.lyapunovExponent < 0

def AveragingErrorClosed {S : StandardAveragingSystem}
    (E : AveragingErrorEstimates S) : Prop :=
  E.errorInequality ∧ E.lyapunovExponent < 0

theorem averaging_error_closed_from_evidence {S : StandardAveragingSystem}
    (E : AveragingErrorEstimates S) (Ev : AveragingErrorEvidence E) :
    AveragingErrorClosed E := by
  exact And.intro Ev.errorInequalityClosed Ev.lyapunovExponentClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse