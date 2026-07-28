import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.ApproximationAdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure ApproximationAnalyticCertificate (A : AdmissibleClass) where
  convergenceRate : Prop
  constantOptimality : Prop
  endpointRecognition : Prop
  convergenceRateClosed : convergenceRate
  constantOptimalityClosed : constantOptimality
  endpointRecognitionClosed : endpointRecognition

def ApproximationAnalyticCertificateClosed {A : AdmissibleClass}
    (C : ApproximationAnalyticCertificate A) : Prop :=
  C.convergenceRate ∧ C.constantOptimality ∧ C.endpointRecognition

theorem approximation_analytic_certificate_closed
    {A : AdmissibleClass} (C : ApproximationAnalyticCertificate A) :
    ApproximationAnalyticCertificateClosed C := by
  exact And.intro C.convergenceRateClosed
    (And.intro C.constantOptimalityClosed C.endpointRecognitionClosed)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse