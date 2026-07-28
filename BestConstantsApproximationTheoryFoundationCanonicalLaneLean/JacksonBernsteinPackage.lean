import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.ApproximationTheoryFoundation

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure JacksonBernsteinPackage (F : ApproximationFoundationPackage) where
  jacksonConstant : ℝ
  bernsteinConstant : ℝ
  jacksonInequality : Prop
  bernsteinInequality : Prop
  constantsOptimal : Prop

structure JacksonBernsteinEvidence (F : ApproximationFoundationPackage) (J : JacksonBernsteinPackage F) where
  jacksonInequalityClosed : J.jacksonInequality
  bernsteinInequalityClosed : J.bernsteinInequality
  constantsOptimalClosed : J.constantsOptimal

def JacksonBernsteinClosed (F : ApproximationFoundationPackage) (J : JacksonBernsteinPackage F) : Prop :=
  J.jacksonInequality ∧ J.bernsteinInequality ∧ J.constantsOptimal

theorem jackson_bernstein_closed_from_evidence
    (F : ApproximationFoundationPackage) (J : JacksonBernsteinPackage F)
    (E : JacksonBernsteinEvidence F J) : JacksonBernsteinClosed F J := by
  exact And.intro E.jacksonInequalityClosed
    (And.intro E.bernsteinInequalityClosed E.constantsOptimalClosed)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse