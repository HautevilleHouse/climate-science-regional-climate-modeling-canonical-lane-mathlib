import ClimateScienceRegionalClimateModelingCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure AdmissibleClass where
  object : ClimateModelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClimateModelWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse
