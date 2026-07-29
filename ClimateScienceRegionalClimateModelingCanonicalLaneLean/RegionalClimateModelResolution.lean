import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure RegionalClimateModelResolutionPackage where
  gridResolution : Type u
  convectiveParameterization : Type v
  boundaryConditions : Type w
  downscalingSkill : Prop
  resolutionRefinementTerm : downscalingSkill

structure RegionalClimateModelResolutionEvidence (R : RegionalClimateModelResolutionPackage) where
  downscalingSkillClosed : R.downscalingSkill

def RegionalClimateModelResolutionClosed (R : RegionalClimateModelResolutionPackage) : Prop :=
  R.downscalingSkill

theorem regional_climate_model_resolution_closed_from_evidence (R : RegionalClimateModelResolutionPackage) (E : RegionalClimateModelResolutionEvidence R) :
    RegionalClimateModelResolutionClosed R := by
  exact E.downscalingSkillClosed

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse