import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.ResonanceAnalysis

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure AveragingNormalFormsPackage {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P} where
  normalFormTransformation : A.fastTimeScale × A.slowTimeScale → A.slowTimeScale
  leadingOrderAveragedEquation : (A.slowTimeScale → A.slowTimeScale)
  higherOrderCorrections : ℕ → (A.slowTimeScale → A.slowTimeScale)
  asymptoticValidity : Prop
  remainderEstimate : Prop

structure AveragingNormalFormsEvidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    (N : AveragingNormalFormsPackage A P R) where
  asymptoticValidityClosed : N.asymptoticValidity
  remainderEstimateClosed : N.remainderEstimate

def AveragingNormalFormsClosed {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    (N : AveragingNormalFormsPackage A P R) : Prop :=
  N.asymptoticValidity ∧ N.remainderEstimate

theorem averaging_normal_forms_closed_from_evidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    (N : AveragingNormalFormsPackage A P R) (E : AveragingNormalFormsEvidence N) :
    AveragingNormalFormsClosed N := by
  exact And.intro E.asymptoticValidityClosed E.remainderEstimateClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse