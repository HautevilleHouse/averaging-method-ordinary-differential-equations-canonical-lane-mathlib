import canonicalLaneMathlib.AdmissibleClass
import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure ResonanceConditionsPackage (A : AdmissibleClass) where
  frequencyVector : A.object.stateSpace → ℝ
  resonanceSet : Set ℝ
  nonResonanceCondition : Prop
  smallDivisorCondition : Prop
  nonResonanceConditionClosed : nonResonanceCondition
  smallDivisorConditionClosed : smallDivisorCondition

structure ResonanceConditionsEvidence (A : AdmissibleClass) (R : ResonanceConditionsPackage A) where
  nonResonanceConditionClosed : R.nonResonanceCondition
  smallDivisorConditionClosed : R.smallDivisorCondition

def ResonanceConditionsClosed (A : AdmissibleClass) (R : ResonanceConditionsPackage A) : Prop :=
  R.nonResonanceCondition ∧ R.smallDivisorCondition

theorem resonance_conditions_closed_from_evidence (A : AdmissibleClass) (R : ResonanceConditionsPackage A)
    (E : ResonanceConditionsEvidence A R) : ResonanceConditionsClosed A R := by
  exact And.intro E.nonResonanceConditionClosed E.smallDivisorConditionClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
