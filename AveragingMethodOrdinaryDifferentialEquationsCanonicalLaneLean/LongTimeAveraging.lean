import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AveragingNormalForms

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure LongTimeAveragingPackage {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R} where
  timeScaleSeparation : ℝ
  convergenceRate : ℕ → ℝ
  errorGrowthBound : ℝ → ℝ
  longTimeValidity : Prop
  stabilityProperty : Prop

structure LongTimeAveragingEvidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R}
    (L : LongTimeAveragingPackage A P R N) where
  longTimeValidityClosed : L.longTimeValidity
  stabilityPropertyClosed : L.stabilityProperty

def LongTimeAveragingClosed {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R}
    (L : LongTimeAveragingPackage A P R N) : Prop :=
  L.longTimeValidity ∧ L.stabilityProperty

theorem long_time_averaging_closed_from_evidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R}
    (L : LongTimeAveragingPackage A P R N) (E : LongTimeAveragingEvidence L) :
    LongTimeAveragingClosed L := by
  exact And.intro E.longTimeValidityClosed E.stabilityPropertyClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse