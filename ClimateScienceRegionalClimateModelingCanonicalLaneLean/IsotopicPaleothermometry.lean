import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  iceCoreSample : Prop
  isotopeRatio : Prop
  temperatureProxy : Prop
  paleoClimateReconstruction : Prop
  calibrationCurve : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  iceCoreSampleClosed : I.iceCoreSample
  isotopeRatioClosed : I.isotopeRatio
  temperatureProxyClosed : I.temperatureProxy
  paleoClimateReconstructionClosed : I.paleoClimateReconstruction
  calibrationCurveClosed : I.calibrationCurve

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.iceCoreSample ∧ I.isotopeRatio ∧ I.temperatureProxy ∧
  I.paleoClimateReconstruction ∧ I.calibrationCurve

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometryPackage) (Ev : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.iceCoreSampleClosed
    (And.intro Ev.isotopeRatioClosed
      (And.intro Ev.temperatureProxyClosed
        (And.intro Ev.paleoClimateReconstructionClosed Ev.calibrationCurveClosed)))

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse