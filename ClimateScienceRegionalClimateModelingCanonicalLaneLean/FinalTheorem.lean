import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceRegionalClimateModelingCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ClimateScienceRegionalClimateModelingCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

def ConstrainedClimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_endgame (A : AdmissibleClass) :
    ConstrainedClimateClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse