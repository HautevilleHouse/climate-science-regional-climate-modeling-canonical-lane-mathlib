import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure ConvectionParameterization where
  entrainmentRate : Float
  detrainmentRate : Float
  cloudBaseMassFlux : Float
  precipitationEfficiency : Float
  closureAssumption : Prop

definition of ConvectionParameterizationAdmissible (C : ConvectionParameterization) : Prop := True

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse