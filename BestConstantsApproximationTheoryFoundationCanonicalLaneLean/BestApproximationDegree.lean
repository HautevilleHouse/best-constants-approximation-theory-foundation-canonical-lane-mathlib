import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure BestApproximationDegreePackage where
  functionClass : Type u
  normType : Type v
  bestConstant : ℝ
  degreeBound : Prop
  approximationError : Prop
  existenceOfOptimalPolynomial : Prop

structure BestApproximationDegreeEvidence (P : BestApproximationDegreePackage) where
  degreeBoundClosed : P.degreeBound
  approximationErrorClosed : P.approximationError
  existenceClosed : P.existenceOfOptimalPolynomial

def BestApproximationDegreeClosed (P : BestApproximationDegreePackage) : Prop :=
  P.degreeBound ∧ P.approximationError ∧ P.existenceOfOptimalPolynomial

theorem best_approximation_degree_closed_from_evidence
    (P : BestApproximationDegreePackage) (E : BestApproximationDegreeEvidence P) :
    BestApproximationDegreeClosed P := by
  exact And.intro E.degreeBoundClosed (And.intro E.approximationErrorClosed E.existenceClosed)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse