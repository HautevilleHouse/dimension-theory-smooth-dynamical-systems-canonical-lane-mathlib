import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure SRBMeasuresPackage where
  srbMeasureExistence : Prop
  physicalMeasure : Prop
  basinOfAttraction : Prop
  absolutelyContinuousOnUnstable : Prop

structure SRBMeasuresEvidence (S : SRBMeasuresPackage) where
  srbMeasureExistenceClosed : S.srbMeasureExistence
  physicalMeasureClosed : S.physicalMeasure
  basinOfAttractionClosed : S.basinOfAttraction
  absolutelyContinuousOnUnstableClosed : S.absolutelyContinuousOnUnstable

def SRBMeasuresClosed (S : SRBMeasuresPackage) : Prop :=
  S.srbMeasureExistence ∧ S.physicalMeasure ∧ S.basinOfAttraction ∧ S.absolutelyContinuousOnUnstable

theorem srb_measures_closed_from_evidence
    (S : SRBMeasuresPackage) (Ev : SRBMeasuresEvidence S) :
    SRBMeasuresClosed S := by
  exact And.intro Ev.srbMeasureExistenceClosed (And.intro Ev.physicalMeasureClosed
    (And.intro Ev.basinOfAttractionClosed Ev.absolutelyContinuousOnUnstableClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
