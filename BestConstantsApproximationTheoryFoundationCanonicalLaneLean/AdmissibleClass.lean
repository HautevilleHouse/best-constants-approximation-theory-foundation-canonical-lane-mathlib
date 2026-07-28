import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure BestConstantsAdmittedObject where
  space : Type u
  bestConstant : ℝ
  inequality : Prop
  sharpness : Prop
  conclusion : inequality ∧ sharpness

structure AdmissibleClass where
  object : BestConstantsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.inequality ∧ A.object.sharpness) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse