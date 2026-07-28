import BridgeLemmas.lean
import GateLemmas.lean

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

def ConstrainedAveragingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_averaging_endgame (A : AdmissibleClass) : ConstrainedAveragingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse