import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure MilankovitchCyclesPackage where
  orbitalEccentricity : Prop
  axialObliquity : Prop
  precession : Prop
  insolationAnomaly : Prop
  glacialCycleTiming : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalEccentricityClosed : M.orbitalEccentricity
  axialObliquityClosed : M.axialObliquity
  precessionClosed : M.precession
  insolationAnomalyClosed : M.insolationAnomaly
  glacialCycleTimingClosed : M.glacialCycleTiming

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalEccentricity ∧ M.axialObliquity ∧ M.precession ∧
  M.insolationAnomaly ∧ M.glacialCycleTiming

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage) (Ev : MilankovitchCyclesEvidence M) :
    MilankovitchCyclesClosed M := by
  exact And.intro Ev.orbitalEccentricityClosed
    (And.intro Ev.axialObliquityClosed
      (And.intro Ev.precessionClosed
        (And.intro Ev.insolationAnomalyClosed Ev.glacialCycleTimingClosed)))

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse