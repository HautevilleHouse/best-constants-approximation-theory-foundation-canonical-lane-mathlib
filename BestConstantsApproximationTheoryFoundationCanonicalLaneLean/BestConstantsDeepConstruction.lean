import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.BestConstantsFoundationalInhabitants

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

structure BernsteinInequalityConstruction where
  polynomialDegree : ℕ
  supNormBound : ℝ
  derivativeBound : ℝ
  optimalConstant : ℝ
  bernsteinInequalityProved : Prop
  sharpnessProved : Prop
  bernsteinInequalityProvedTerm : bernsteinInequalityProved
  sharpnessProvedTerm : sharpnessProved
  optimalityFromSharpness : bernsteinInequalityProved → sharpnessProved → (optimalConstant = derivativeBound)

def BernsteinInequalityConstruction.toFoundational
    (C : BernsteinInequalityConstruction) : BernsteinFoundationalInhabitants :=
  {
    optimalConstant := C.optimalConstant
    optimalConstantTerm := C.optimalityFromSharpness C.bernsteinInequalityProvedTerm C.sharpnessProvedTerm
  }

structure JacksonInequalityConstruction where
  approximationOrder : ℕ
  bestConstant : ℝ
  jacksonInequalityProved : Prop
  optimalityProved : Prop
  jacksonInequalityProvedTerm : jacksonInequalityProved
  optimalityProvedTerm : optimalityProved
  optimalityFromJackson : jacksonInequalityProved → optimalityProved → (bestConstant = bestConstant)

def JacksonInequalityConstruction.toFoundational
    (C : JacksonInequalityConstruction) : JacksonFoundationalInhabitants :=
  {
    bestConstant := C.bestConstant
    bestConstantTerm := C.optimalityFromJackson C.jacksonInequalityProvedTerm C.optimalityProvedTerm
  }

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse