import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.PeriodicPerturbation

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure ResonanceAnalysisPackage {A : AveragingSystemPackage} 
    {P : PeriodicPerturbationPackage A} where
  resonantFrequencies : Set ℕ
  nonResonantCondition : Prop
  diophantineCondition : Prop
  smallDivisorBound : ℝ
  resonanceFreeUpToOrder : ℕ

structure ResonanceAnalysisEvidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} 
    (R : ResonanceAnalysisPackage A P) where
  nonResonantConditionClosed : R.nonResonantCondition
  diophantineConditionClosed : R.diophantineCondition
  smallDivisorBoundClosed : R.smallDivisorBound > 0

def ResonanceAnalysisClosed {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} 
    (R : ResonanceAnalysisPackage A P) : Prop :=
  R.nonResonantCondition ∧ R.diophantineCondition ∧ R.smallDivisorBound > 0

theorem resonance_analysis_closed_from_evidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} 
    (R : ResonanceAnalysisPackage A P) (E : ResonanceAnalysisEvidence R) :
    ResonanceAnalysisClosed R := by
  exact And.intro E.nonResonantConditionClosed
    (And.intro E.diophantineConditionClosed E.smallDivisorBoundClosed)

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse