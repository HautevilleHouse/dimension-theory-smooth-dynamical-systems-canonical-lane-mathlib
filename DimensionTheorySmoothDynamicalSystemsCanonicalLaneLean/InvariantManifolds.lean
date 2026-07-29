import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure InvariantManifoldPackage (M : Type) [TopologicalSpace M] [MetricSpace M] (f : M → M) where
  hyperbolicSet : Set M
  stableManifold : Set M
  unstableManifold : Set M
  hadamardPerronTheorem : Prop
  localStableUnstableManifolds : Prop
  inclinationLemma : Prop

structure InvariantManifoldEvidence {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (I : InvariantManifoldPackage M f) where
  hadamardPerronTheoremClosed : I.hadamardPerronTheorem
  localStableUnstableManifoldsClosed : I.localStableUnstableManifolds
  inclinationLemmaClosed : I.inclinationLemma

def InvariantManifoldClosed {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (I : InvariantManifoldPackage M f) : Prop :=
  I.hadamardPerronTheorem ∧ I.localStableUnstableManifolds ∧ I.inclinationLemma

theorem invariant_manifold_closed_from_evidence {M : Type} [TopologicalSpace M] [MetricSpace M]
    {f : M → M} (I : InvariantManifoldPackage M f) (E : InvariantManifoldEvidence I) :
    InvariantManifoldClosed I := by
  exact And.intro E.hadamardPerronTheoremClosed
    (And.intro E.localStableUnstableManifoldsClosed E.inclinationLemmaClosed)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse