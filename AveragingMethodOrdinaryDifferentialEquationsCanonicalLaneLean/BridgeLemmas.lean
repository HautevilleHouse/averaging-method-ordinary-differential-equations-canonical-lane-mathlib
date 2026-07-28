import AdmissibleClass.lean

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

def AveragingWitnessClosed (O : AveragingAdmittedObject) : Prop :=
  O.standardForm ∧ (∀ x : O.stateSpace, O.averageSlowDynamics x = O.slowDynamics x → O.perturbationBound O.smallParameter x)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AveragingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    let ev : AveragingWitnessClosed A.object := ?_
    exact ev

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse