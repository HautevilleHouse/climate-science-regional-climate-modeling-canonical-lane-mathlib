import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModeling

structure ProxyRecord where
  proxyType : String
  location : String
  timeSeries : List (ℝ × ℝ)
  datingUncertainty : ℝ
  calibrationValid : Prop
  calibrationValidTerm : calibrationValid

structure ClimateProxiesPackage where
  records : List ProxyRecord
  proxyConsistency : Prop
  multiproxySynthesis : Prop
  proxyConsistencyTerm : proxyConsistency
  multiproxySynthesisTerm : multiproxySynthesis

structure ClimateProxiesEvidence (C : ClimateProxiesPackage) where
  proxyConsistencyClosed : C.proxyConsistency
  multiproxySynthesisClosed : C.multiproxySynthesis

def ClimateProxiesClosed (C : ClimateProxiesPackage) : Prop :=
  C.proxyConsistency ∧ C.multiproxySynthesis

theorem climate_proxies_closed_from_evidence (C : ClimateProxiesPackage) (E : ClimateProxiesEvidence C) : ClimateProxiesClosed C := by
  exact And.intro E.proxyConsistencyClosed E.multiproxySynthesisClosed

end ClimateScienceRegionalClimateModeling
end HautevilleHouse