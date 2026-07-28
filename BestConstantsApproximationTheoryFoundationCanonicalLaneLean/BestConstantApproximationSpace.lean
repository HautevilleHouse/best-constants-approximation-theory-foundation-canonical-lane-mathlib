import canonicalLaneMathlib.AdmissibleClass
import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure ApproximationSpacePackage where
  spaceType : Type u
  normedSpace : NormedAddCommGroup spaceType
  approximationOrder : Nat
  bestConstant : ℝ
  inequalityFormulation : Prop
  constantMinimality : Prop

structure ApproximationSpaceEvidence (P : ApproximationSpacePackage) where
  inequalityHoldsClosed : P.inequalityFormulation
  constantMinimalityClosed : P.constantMinimality

def ApproximationSpaceClosed (P : ApproximationSpacePackage) : Prop :=
  P.inequalityFormulation ∧ P.constantMinimality

theorem approximation_space_closed_from_evidence (P : ApproximationSpacePackage)
    (E : ApproximationSpaceEvidence P) : ApproximationSpaceClosed P := by
  exact And.intro E.inequalityHoldsClosed E.constantMinimalityClosed

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse