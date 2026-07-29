import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarInsolation : Prop
  albedoFeedback : Prop
  outgoingLongwave : Prop
  energyBalanceEquation : Prop
  equilibriumTemperature : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  solarInsolationClosed : E.solarInsolation
  albedoFeedbackClosed : E.albedoFeedback
  outgoingLongwaveClosed : E.outgoingLongwave
  energyBalanceEquationClosed : E.energyBalanceEquation
  equilibriumTemperatureClosed : E.equilibriumTemperature

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.solarInsolation ∧ E.albedoFeedback ∧ E.outgoingLongwave ∧
  E.energyBalanceEquation ∧ E.equilibriumTemperature

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  exact And.intro Ev.solarInsolationClosed
    (And.intro Ev.albedoFeedbackClosed
      (And.intro Ev.outgoingLongwaveClosed
        (And.intro Ev.energyBalanceEquationClosed Ev.equilibriumTemperatureClosed)))

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse