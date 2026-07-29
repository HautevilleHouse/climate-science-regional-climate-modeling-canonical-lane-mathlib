import ClimateScienceRegionalClimateModelingCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure ClimateModelSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateModelAdmittedObject where
  space : ClimateModelSpace
  regionalDomain : Prop
  boundaryConditions : Prop
  closureConclusion : Prop
  conclusion : closureConclusion

structure ClimateModelEndgameState where
  object : ClimateModelAdmittedObject

def ClimateModelWitnessClosed (O : ClimateModelAdmittedObject) : Prop :=
  O.closureConclusion

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse
