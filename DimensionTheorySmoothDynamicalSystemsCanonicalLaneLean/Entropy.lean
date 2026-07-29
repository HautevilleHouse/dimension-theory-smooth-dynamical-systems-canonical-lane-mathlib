import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure EntropyPackage (M : Type) [TopologicalSpace M] [MetricSpace M] (f : M → M) where
  measureTheoreticEntropy : ℝ
  topologicalEntropy : ℝ
  variationalPrinciple : Prop
  entropyExpansiveness : Prop
  brinKatokLocalEntropy : Prop

structure EntropyEvidence {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (E : EntropyPackage M f) where
  variationalPrincipleClosed : E.variationalPrinciple
  entropyExpansivenessClosed : E.entropyExpansiveness
  brinKatokLocalEntropyClosed : E.brinKatokLocalEntropy

def EntropyClosed {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (E : EntropyPackage M f) : Prop :=
  E.variationalPrinciple ∧ E.entropyExpansiveness ∧ E.brinKatokLocalEntropy

theorem entropy_closed_from_evidence {M : Type} [TopologicalSpace M] [MetricSpace M]
    {f : M → M} (E : EntropyPackage M f) (Ev : EntropyEvidence E) : EntropyClosed E := by
  exact And.intro Ev.variationalPrincipleClosed
    (And.intro Ev.entropyExpansivenessClosed Ev.brinKatokLocalEntropyClosed)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse