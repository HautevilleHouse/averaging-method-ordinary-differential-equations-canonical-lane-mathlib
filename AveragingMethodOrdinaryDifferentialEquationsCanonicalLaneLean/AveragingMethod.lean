import canonicalLaneMathlib.AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure AveragingMethodPackage where
  originalSystem : Type
  averagedSystem : Type
  timeScaleSeparation : Prop
  averagingMapping : Type
  errorEstimate : Prop

structure AveragingMethodEvidence (P : AveragingMethodPackage) where
  timeScaleSeparationClosed : P.timeScaleSeparation
  errorEstimateClosed : P.errorEstimate

def AveragingMethodClosed (P : AveragingMethodPackage) : Prop :=
  P.timeScaleSeparation ∧ P.errorEstimate

theorem averaging_method_closed_from_evidence (P : AveragingMethodPackage) (E : AveragingMethodEvidence P) :
    AveragingMethodClosed P := by
  exact And.intro E.timeScaleSeparationClosed E.errorEstimateClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse