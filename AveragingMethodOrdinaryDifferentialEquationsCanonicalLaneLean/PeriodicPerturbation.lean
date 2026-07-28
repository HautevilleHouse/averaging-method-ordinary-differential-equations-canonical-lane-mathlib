import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AveragingSystem

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure PeriodicPerturbationPackage {A : AveragingSystemPackage} where
  periodicCoefficient : A.fastTimeScale → A.slowTimeScale → A.slowTimeScale
  periodT : ℝ
  coefficientRegularity : Prop
  periodicCondition : ∀ (x : A.slowTimeScale), 
    periodicCoefficient 0 x = periodicCoefficient A.periodT x

structure PeriodicPerturbationEvidence {A : AveragingSystemPackage} 
    (P : PeriodicPerturbationPackage A) where
  coefficientRegularityClosed : P.coefficientRegularity
  periodicConditionClosed : ∀ (x : A.slowTimeScale), 
    P.periodicCoefficient 0 x = P.periodicCoefficient A.periodT x

def PeriodicPerturbationClosed {A : AveragingSystemPackage}
    (P : PeriodicPerturbationPackage A) : Prop :=
  P.coefficientRegularity ∧ ∀ (x : A.slowTimeScale), 
    P.periodicCoefficient 0 x = P.periodicCoefficient A.periodT x

theorem periodic_perturbation_closed_from_evidence {A : AveragingSystemPackage}
    (P : PeriodicPerturbationPackage A) (E : PeriodicPerturbationEvidence P) :
    PeriodicPerturbationClosed P := by
  exact And.intro E.coefficientRegularityClosed E.periodicConditionClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse