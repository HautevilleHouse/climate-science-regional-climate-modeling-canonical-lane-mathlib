import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingCanonicalLaneLean

structure NestingStrategy where
  parentModel : RegionalClimateModel
  childGrid : Type
  boundaryZoneWidth : Nat
  feedbackEnabled : Bool
  oneWayNesting : Prop
  twoWayNesting : Prop

definition of NestingStragegyAdmissible (N : NestingStrategy) : Prop := True

end ClimateScienceRegionalClimateModelingCanonicalLaneLean
end HautevilleHouse