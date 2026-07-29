import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure DimensionTheoryPackage (M : Type) [TopologicalSpace M] [MetricSpace M] (f : M → M) where
  hausdorffDimension : ℝ
  boxCountingDimension : ℝ
  dimensionForHyperbolicSet : Prop
  ecologyOfDimensions : Prop
  dimensionFromLyapunovExponents : Prop

structure DimensionTheoryEvidence {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (D : DimensionTheoryPackage M f) where
  dimensionForHyperbolicSetClosed : D.dimensionForHyperbolicSet
  ecologyOfDimensionsClosed : D.ecologyOfDimensions
  dimensionFromLyapunovExponentsClosed : D.dimensionFromLyapunovExponents

def DimensionTheoryClosed {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (D : DimensionTheoryPackage M f) : Prop :=
  D.dimensionForHyperbolicSet ∧ D.ecologyOfDimensions ∧ D.dimensionFromLyapunovExponents

theorem dimension_theory_closed_from_evidence {M : Type} [TopologicalSpace M] [MetricSpace M]
    {f : M → M} (D : DimensionTheoryPackage M f) (E : DimensionTheoryEvidence D) :
    DimensionTheoryClosed D := by
  exact And.intro E.dimensionForHyperbolicSetClosed
    (And.intro E.ecologyOfDimensionsClosed E.dimensionFromLyapunovExponentsClosed)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse