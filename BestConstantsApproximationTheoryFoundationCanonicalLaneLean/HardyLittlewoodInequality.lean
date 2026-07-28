import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure HardyLittlewoodInequalityPackage where
  dimension : ℕ
  exponent : ℝ
  bestConstant : ℝ
  inequalityStatement : Prop
  sharpnessProof : Prop
  maximalFunctionBound : Prop

structure HardyLittlewoodInequalityEvidence (P : HardyLittlewoodInequalityPackage) where
  inequalityClosed : P.inequalityStatement
  sharpnessClosed : P.sharpnessProof
  maximalFunctionBoundClosed : P.maximalFunctionBound

def HardyLittlewoodInequalityClosed (P : HardyLittlewoodInequalityPackage) : Prop :=
  P.inequalityStatement ∧ P.sharpnessProof ∧ P.maximalFunctionBound

theorem hardy_littlewood_inequality_closed_from_evidence
    (P : HardyLittlewoodInequalityPackage) (E : HardyLittlewoodInequalityEvidence P) :
    HardyLittlewoodInequalityClosed P := by
  exact And.intro E.inequalityClosed (And.intro E.sharpnessClosed E.maximalFunctionBoundClosed)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse