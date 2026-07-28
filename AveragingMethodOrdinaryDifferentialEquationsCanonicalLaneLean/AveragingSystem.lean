import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure AveragingSystemPackage where
  fastTimeScale : Type u
  slowTimeScale : Type v
  perturbationParameter : ℝ
  unperturbedSystem : (fastTimeScale → slowTimeScale) → slowTimeScale
  averagedSystem : (slowTimeScale) → slowTimeScale
  averagingErrorTerm : Prop
  errorBoundUniform : Prop

structure AveragingSystemEvidence (A : AveragingSystemPackage) where
  averagingErrorTermClosed : A.averagingErrorTerm
  errorBoundUniformClosed : A.errorBoundUniform

def AveragingSystemClosed (A : AveragingSystemPackage) : Prop :=
  A.averagingErrorTerm ∧ A.errorBoundUniform

theorem averaging_system_closed_from_evidence (A : AveragingSystemPackage) (E : AveragingSystemEvidence A) :
    AveragingSystemClosed A := by
  exact And.intro E.averagingErrorTermClosed E.errorBoundUniformClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse