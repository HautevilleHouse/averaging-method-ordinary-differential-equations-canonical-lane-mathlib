import canonicalLaneMathlib.AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.PeriodicOrbits

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure FastOscillationsPackage where
  periodicFastFlow : Prop
  fastVariableDecay : Prop
  resonanceCondition : Prop

def FastOscillationsClosed (P : FastOscillationsPackage) : Prop :=
  P.periodicFastFlow ∧ P.fastVariableDecay ∧ P.resonanceCondition

theorem fast_oscillations_closed (P : FastOscillationsPackage) : FastOscillationsClosed P := by
  exact And.intro P.periodicFastFlow (And.intro P.fastVariableDecay P.resonanceCondition)

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse