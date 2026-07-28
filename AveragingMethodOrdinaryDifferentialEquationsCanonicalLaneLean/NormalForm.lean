import canonicalLaneMathlib.AdmissibleClass
import AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean

structure NormalFormPackage (A : AdmissibleClass) where
  transformation : A.object.stateSpace → A.object.stateSpace
  transformedVectorField : A.object.stateSpace → ℝ → A.object.stateSpace
  transformIsNearIdentity : Prop
  transformedIsAveraged : Prop
  transformIsNearIdentityClosed : transformIsNearIdentity
  transformedIsAveragedClosed : transformedIsAveraged

structure NormalFormEvidence (A : AdmissibleClass) (N : NormalFormPackage A) where
  transformIsNearIdentityClosed : N.transformIsNearIdentity
  transformedIsAveragedClosed : N.transformedIsAveraged

def NormalFormClosed (A : AdmissibleClass) (N : NormalFormPackage A) : Prop :=
  N.transformIsNearIdentity ∧ N.transformedIsAveraged

theorem normal_form_closed_from_evidence (A : AdmissibleClass) (N : NormalFormPackage A)
    (E : NormalFormEvidence A N) : NormalFormClosed A N := by
  exact And.intro E.transformIsNearIdentityClosed E.transformedIsAveragedClosed

end AveragingMethodOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
