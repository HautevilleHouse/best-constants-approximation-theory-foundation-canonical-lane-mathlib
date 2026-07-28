import canonicalLaneMathlib.AdmissibleClass
import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure ChebyshevApproximationPackage where
  functionClass : Type u
  interval : Set ℝ
  bestApproximationError : ℝ
  chebyshevPolynomial : Type u
  errorBoundStatement : Prop
  errorAchieved : Prop

structure ChebyshevApproximationEvidence (C : ChebyshevApproximationPackage) where
  errorBoundClosed : C.errorBoundStatement
  errorAchievedClosed : C.errorAchieved

def ChebyshevApproximationClosed (C : ChebyshevApproximationPackage) : Prop :=
  C.errorBoundStatement ∧ C.errorAchieved

theorem chebyshev_approximation_closed_from_evidence (C : ChebyshevApproximationPackage)
    (E : ChebyshevApproximationEvidence C) : ChebyshevApproximationClosed C := by
  exact And.intro E.errorBoundClosed E.errorAchievedClosed

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse