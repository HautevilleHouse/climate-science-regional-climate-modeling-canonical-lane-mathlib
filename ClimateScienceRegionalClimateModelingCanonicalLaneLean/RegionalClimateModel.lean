import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure RegionalClimateModelPackage where
  boundaryConditions : Prop
  parameterization : Prop
  downscalingDynamics : Prop
  regionalForcing : Prop
  validationMetrics : Prop

structure RegionalClimateModelEvidence (R : RegionalClimateModelPackage) where
  boundaryConditionsClosed : R.boundaryConditions
  parameterizationClosed : R.parameterization
  downscalingDynamicsClosed : R.downscalingDynamics
  regionalForcingClosed : R.regionalForcing
  validationMetricsClosed : R.validationMetrics

def RegionalClimateModelClosed (R : RegionalClimateModelPackage) : Prop :=
  R.boundaryConditions ∧ R.parameterization ∧ R.downscalingDynamics ∧
  R.regionalForcing ∧ R.validationMetrics

theorem regional_climate_model_closed_from_evidence (R : RegionalClimateModelPackage) (Ev : RegionalClimateModelEvidence R) :
    RegionalClimateModelClosed R := by
  exact And.intro Ev.boundaryConditionsClosed
    (And.intro Ev.parameterizationClosed
      (And.intro Ev.downscalingDynamicsClosed
        (And.intro Ev.regionalForcingClosed Ev.validationMetricsClosed)))

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse