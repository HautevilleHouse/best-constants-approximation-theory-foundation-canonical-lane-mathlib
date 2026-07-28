import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure BernsteinInequalityPackage where
  degree : ℕ
  interval : Set ℝ
  bestConstant : ℝ
  inequalityStatement : Prop
  sharpnessProof : Prop
  polynomialFamily : Prop

structure BernsteinInequalityEvidence (P : BernsteinInequalityPackage) where
  inequalityClosed : P.inequalityStatement
  sharpnessClosed : P.sharpnessProof
  polynomialFamilyClosed : P.polynomialFamily

def BernsteinInequalityClosed (P : BernsteinInequalityPackage) : Prop :=
  P.inequalityStatement ∧ P.sharpnessProof ∧ P.polynomialFamily

theorem bernstein_inequality_closed_from_evidence (P : BernsteinInequalityPackage)
    (E : BernsteinInequalityEvidence P) : BernsteinInequalityClosed P := by
  exact And.intro E.inequalityClosed (And.intro E.sharpnessClosed E.polynomialFamilyClosed)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse