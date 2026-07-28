import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure BestConstantsAdmittedObject where
  functionClass : Type u
  norm : Type v
  bestConstant : ℝ
  approximationOrder : ℕ
  constantOptimal : Prop
  conclusion : constantOptimal

structure AdmissibleClass where
  object : BestConstantsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BestConstantsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse