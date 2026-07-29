import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceRegionalClimateModelingCanonicalLaneLean.RadiationEnergyBalance

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure EnergyBalanceSurgeryPackage {G : GreenhouseEffectPackage}
    {R : RadiationEnergyBalancePackage G} {E : EBMTimeSteppingPackage R}
    {F : ForcingSensitivityPackage E} (S : FeedbacksPackage F) where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryEnergyBalanced : Prop
  monotonicitySurvivesSurgery : Prop
  topologyChangeAccounted : Prop

structure EnergyBalanceSurgeryEvidence {G : GreenhouseEffectPackage}
    {R : RadiationEnergyBalancePackage G} {E : EBMTimeSteppingPackage R}
    {F : ForcingSensitivityPackage E} {S : FeedbacksPackage F}
    (U : EnergyBalanceSurgeryPackage S) where
  surgeryTimesDiscreteClosed : U.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : U.surgeryRegionAdmissible
  postSurgeryEnergyBalancedClosed : U.postSurgeryEnergyBalanced
  monotonicitySurvivesSurgeryClosed : U.monotonicitySurvivesSurgery
  topologyChangeAccountedClosed : U.topologyChangeAccounted

def EnergyBalanceSurgeryClosed {G : GreenhouseEffectPackage}
    {R : RadiationEnergyBalancePackage G} {E : EBMTimeSteppingPackage R}
    {F : ForcingSensitivityPackage E} {S : FeedbacksPackage F}
    (U : EnergyBalanceSurgeryPackage S) : Prop :=
  U.surgeryTimesDiscrete ∧ U.surgeryRegionAdmissible ∧
  U.postSurgeryEnergyBalanced ∧ U.monotonicitySurvivesSurgery ∧
  U.topologyChangeAccounted

theorem energy_balance_surgery_closed_from_evidence
    {G : GreenhouseEffectPackage} {R : RadiationEnergyBalancePackage G}
    {E : EBMTimeSteppingPackage R} {F : ForcingSensitivityPackage E}
    {S : FeedbacksPackage F} (U : EnergyBalanceSurgeryPackage S)
    (E_ev : EnergyBalanceSurgeryEvidence U) : EnergyBalanceSurgeryClosed U := by
  exact And.intro E_ev.surgeryTimesDiscreteClosed
    (And.intro E_ev.surgeryRegionAdmissibleClosed
      (And.intro E_ev.postSurgeryEnergyBalancedClosed
        (And.intro E_ev.monotonicitySurvivesSurgeryClosed E_ev.topologyChangeAccountedClosed)))

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse