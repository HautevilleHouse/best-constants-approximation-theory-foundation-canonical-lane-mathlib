import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundation

structure ApproximationConstantsPackage where
  jacksonConstant : ℝ
  bernsteinConstant : ℝ
  jacksonInequality : Prop
  bernsteinInequality : Prop
  optimalityCondition : Prop

structure ApproximationConstantsEvidence (A : ApproximationConstantsPackage) where
  jacksonInequalityClosed : A.jacksonInequality
  bernsteinInequalityClosed : A.bernsteinInequality
  optimalityConditionClosed : A.optimalityCondition

def ApproximationConstantsClosed (A : ApproximationConstantsPackage) : Prop :=
  A.jacksonInequality ∧ A.bernsteinInequality ∧ A.optimalityCondition

theorem approximation_constants_closed_from_evidence (A : ApproximationConstantsPackage)
    (E : ApproximationConstantsEvidence A) : ApproximationConstantsClosed A := by
  exact And.intro E.jacksonInequalityClosed
    (And.intro E.bernsteinInequalityClosed E.optimalityConditionClosed)

end BestConstantsApproximationTheoryFoundation
end HautevilleHouse