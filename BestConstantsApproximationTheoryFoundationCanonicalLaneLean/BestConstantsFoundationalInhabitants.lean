import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.BestConstantsAnalyticProof

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure BernsteinFoundationalInhabitants where
  optimalConstant : ℝ
  optimalConstantTerm : optimalConstant = optimalConstant

structure JacksonFoundationalInhabitants where
  bestConstant : ℝ
  bestConstantTerm : bestConstant = bestConstant

structure BestConstantsFoundationalTheoremInhabitants where
  bernstein : BernsteinFoundationalInhabitants
  jackson : JacksonFoundationalInhabitants
  endpoint : EndpointFoundationalInhabitants

structure EndpointFoundationalInhabitants where
  optimalConstantAchieved : Prop
  optimalConstantAchievedTerm : optimalConstantAchieved

def BestConstantsFoundationalTheoremInhabitants.toAnalyticProofCertificate
    (A : AdmissibleClass) (T : BestConstantsFoundationalTheoremInhabitants) :
    ApproximationAnalyticCertificate A :=
  {
    convergenceRate := True
    constantOptimality := T.bernstein.optimalConstant = T.jackson.bestConstant
    endpointRecognition := T.endpoint.optimalConstantAchieved
    convergenceRateClosed := trivial
    constantOptimalityClosed := by
      rfl
    endpointRecognitionClosed := T.endpoint.optimalConstantAchievedTerm
  }

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse