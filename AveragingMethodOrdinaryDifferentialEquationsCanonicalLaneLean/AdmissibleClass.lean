import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure AveragingAdmittedObject where
  stateSpace : Type
  slowDynamics : stateSpace → stateSpace
  fastDynamics : stateSpace → ℕ → ℝ  -- placeholder for periodic function
  smallParameter : ℝ
  standardForm : Prop
  averageSlowDynamics : stateSpace → stateSpace
  perturbationBound : ℝ → Prop
  conclusion : ℝ → Prop

structure AdmissibleClass where
  object : AveragingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AveragingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse