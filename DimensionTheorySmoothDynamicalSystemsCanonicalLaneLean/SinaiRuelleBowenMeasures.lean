import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure SRBMeasurePackage (M : Type) [TopologicalSpace M] [MetricSpace M] (f : M → M) where
  srbMeasure : Measure M
  existenceForHyperbolicAttractor : Prop
  physicallyRelevantSRB : Prop
  absolutlyContinuousOnUnstable : Prop
  invariantMeasure : Prop

structure SRBMeasureEvidence {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (S : SRBMeasurePackage M f) where
  existenceForHyperbolicAttractorClosed : S.existenceForHyperbolicAttractor
  physicallyRelevantSRBClosed : S.physicallyRelevantSRB
  absolutlyContinuousOnUnstableClosed : S.absolutlyContinuousOnUnstable
  invariantMeasureClosed : S.invariantMeasure

def SRBMeasureClosed {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (S : SRBMeasurePackage M f) : Prop :=
  S.existenceForHyperbolicAttractor ∧ S.physicallyRelevantSRB ∧
  S.absolutlyContinuousOnUnstable ∧ S.invariantMeasure

theorem srb_measure_closed_from_evidence {M : Type} [TopologicalSpace M] [MetricSpace M]
    {f : M → M} (S : SRBMeasurePackage M f) (E : SRBMeasureEvidence S) :
    SRBMeasureClosed S := by
  exact And.intro E.existenceForHyperbolicAttractorClosed
    (And.intro E.physicallyRelevantSRBClosed
      (And.intro E.absolutlyContinuousOnUnstableClosed E.invariantMeasureClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse