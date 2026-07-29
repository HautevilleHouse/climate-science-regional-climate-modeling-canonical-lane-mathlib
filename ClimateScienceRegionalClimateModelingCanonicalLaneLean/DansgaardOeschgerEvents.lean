import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarming : Prop
  gradualCooling : Prop
  seesawMechanism : Prop
  iceCoreSignal : Prop
  millennialScaleOscillation : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  abruptWarmingClosed : D.abruptWarming
  gradualCoolingClosed : D.gradualCooling
  seesawMechanismClosed : D.seesawMechanism
  iceCoreSignalClosed : D.iceCoreSignal
  millennialScaleOscillationClosed : D.millennialScaleOscillation

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.abruptWarming ∧ D.gradualCooling ∧ D.seesawMechanism ∧
  D.iceCoreSignal ∧ D.millennialScaleOscillation

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage) (Ev : DansgaardOeschgerEventsEvidence D) :
    DansgaardOeschgerEventsClosed D := by
  exact And.intro Ev.abruptWarmingClosed
    (And.intro Ev.gradualCoolingClosed
      (And.intro Ev.seesawMechanismClosed
        (And.intro Ev.iceCoreSignalClosed Ev.millennialScaleOscillationClosed)))

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse