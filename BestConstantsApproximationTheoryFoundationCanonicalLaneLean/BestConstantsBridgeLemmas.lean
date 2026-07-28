import BestConstantsApproximationTheoryFoundationCanonicalLaneLean.ApproximationAdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryFoundationCanonicalLaneLean

def BestConstantsWitnessClosed (O : BestConstantsAdmittedObject) : Prop :=
  O.constantOptimal

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BestConstantsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BestConstantsApproximationTheoryFoundationCanonicalLaneLean
end HautevilleHouse