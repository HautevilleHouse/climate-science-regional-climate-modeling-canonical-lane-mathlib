import ClimateScienceRegionalClimateModelingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClimateModelWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse
