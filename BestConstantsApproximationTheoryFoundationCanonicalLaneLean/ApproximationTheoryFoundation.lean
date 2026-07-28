import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure ApproximationFoundationPackage where
  functionSpace : Type u
  approximationOrder : ℕ
  bestConstantType : Type v
  bestConstant : bestConstantType
  constantOptimality : Prop

structure ApproximationFoundationEvidence (F : ApproximationFoundationPackage) where
  constantOptimalityClosed : F.constantOptimality

def ApproximationFoundationClosed (F : ApproximationFoundationPackage) : Prop :=
  F.constantOptimality

theorem approximation_foundation_closed_from_evidence
    (F : ApproximationFoundationPackage) (E : ApproximationFoundationEvidence F) :
    ApproximationFoundationClosed F := by
  exact E.constantOptimalityClosed

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse