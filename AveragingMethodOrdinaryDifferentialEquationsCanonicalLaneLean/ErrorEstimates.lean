import canonicalLaneMathlib.AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.FastOscillations

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure ErrorEstimatesPackage where
  truncationError : Prop
  remainderBound : Prop
  convergenceOrder : Nat

def ErrorEstimatesClosed (P : ErrorEstimatesPackage) : Prop :=
  P.truncationError ∧ P.remainderBound

theorem error_estimates_closed (P : ErrorEstimatesPackage) : ErrorEstimatesClosed P := by
  exact And.intro P.truncationError P.remainderBound

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse