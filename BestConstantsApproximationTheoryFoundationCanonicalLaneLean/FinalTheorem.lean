import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BestConstantsApproximationTheoryFoundation.BridgeLemmas
import HautevilleHouse.BestConstantsApproximationTheoryFoundation.GateLemmas

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundation

def ConstrainedBestConstantsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_best_constants_endgame (A : AdmissibleClass) :
    ConstrainedBestConstantsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BestConstantsApproximationTheoryFoundation
end HautevilleHouse