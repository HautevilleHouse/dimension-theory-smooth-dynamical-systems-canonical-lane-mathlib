import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure InvariantMeasurePackage where
  flow : Type u
  measureSpace : Type v
  invariance : Prop
  ergodicity : Prop
  mixing : Prop

structure InvariantMeasureEvidence (I : InvariantMeasurePackage) where
  invarianceClosed : I.invariance
  ergodicityClosed : I.ergodicity
  mixingClosed : I.mixing

def InvariantMeasureClosed (I : InvariantMeasurePackage) : Prop :=
  I.invariance ∧ I.ergodicity ∧ I.mixing

theorem invariant_measure_closed_from_evidence (I : InvariantMeasurePackage) (Ev : InvariantMeasureEvidence I) : InvariantMeasureClosed I := by
  exact And.intro Ev.invarianceClosed (And.intro Ev.ergodicityClosed Ev.mixingClosed)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
