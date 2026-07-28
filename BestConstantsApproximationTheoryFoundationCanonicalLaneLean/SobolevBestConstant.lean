import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure SobolevBestConstantPackage where
  dimension : ℕ
  exponent : ℝ
  bestConstant : ℝ
  inequalityStatement : Prop
  sharpnessProof : Prop
  extremalFunctionExists : Prop

structure SobolevBestConstantEvidence (P : SobolevBestConstantPackage) where
  inequalityClosed : P.inequalityStatement
  sharpnessClosed : P.sharpnessProof
  extremalClosed : P.extremalFunctionExists

def SobolevBestConstantClosed (P : SobolevBestConstantPackage) : Prop :=
  P.inequalityStatement ∧ P.sharpnessProof ∧ P.extremalFunctionExists

theorem sobolev_best_constant_closed_from_evidence (P : SobolevBestConstantPackage)
    (E : SobolevBestConstantEvidence P) : SobolevBestConstantClosed P := by
  exact And.intro E.inequalityClosed (And.intro E.sharpnessClosed E.extremalClosed)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse