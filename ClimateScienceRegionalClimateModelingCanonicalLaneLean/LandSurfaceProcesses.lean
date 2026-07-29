import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure LandSurfaceProcesses where
  soilMoisture : Float
  vegetationFraction : Float
  surfaceRoughness : Float
  evapotranspiration : Float
  heatFluxesBalanced : Prop

definition of LandSurfaceProcessesAdmissible (L : LandSurfaceProcesses) : Prop := True

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse