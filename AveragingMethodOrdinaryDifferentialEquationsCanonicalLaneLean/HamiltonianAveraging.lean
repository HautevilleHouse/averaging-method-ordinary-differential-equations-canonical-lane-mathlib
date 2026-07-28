import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.LongTimeAveraging

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure HamiltonianAveragingPackage {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R} {L : LongTimeAveragingPackage A P R N} where
  phaseSpace : Type u
  symplecticForm : Type v
  hamiltonianFunction : phaseSpace → ℝ
  averagedHamiltonian : phaseSpace → ℝ
  canonicalTransformation : phaseSpace → phaseSpace
  poissonBracketPreserved : Prop
  energyErrorBound : ℝ → Prop

structure HamiltonianAveragingEvidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R} {L : LongTimeAveragingPackage A P R N}
    (H : HamiltonianAveragingPackage A P R N L) where
  poissonBracketPreservedClosed : H.poissonBracketPreserved
  energyErrorBoundClosed : ∀ (ϵ : ℝ), H.energyErrorBound ϵ

def HamiltonianAveragingClosed {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R} {L : LongTimeAveragingPackage A P R N}
    (H : HamiltonianAveragingPackage A P R N L) : Prop :=
  H.poissonBracketPreserved ∧ ∀ (ϵ : ℝ), H.energyErrorBound ϵ

theorem hamiltonian_averaging_closed_from_evidence {A : AveragingSystemPackage}
    {P : PeriodicPerturbationPackage A} {R : ResonanceAnalysisPackage A P}
    {N : AveragingNormalFormsPackage A P R} {L : LongTimeAveragingPackage A P R N}
    (H : HamiltonianAveragingPackage A P R N L) (E : HamiltonianAveragingEvidence H) :
    HamiltonianAveragingClosed H := by
  exact And.intro E.poissonBracketPreservedClosed E.energyErrorBoundClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse