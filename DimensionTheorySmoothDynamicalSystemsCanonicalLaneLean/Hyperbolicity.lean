import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure HyperbolicityPackage (M : Type) [TopologicalSpace M] [MetricSpace M] (f : M → M) where
  hyperbolicSet : Set M
  uniformHyperbolicity : Prop
  shadowingLemma : Prop
  closingLemma : Prop
  markovPartition : Prop
  anosovProperty : Prop

structure HyperbolicityEvidence {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (H : HyperbolicityPackage M f) where
  uniformHyperbolicityClosed : H.uniformHyperbolicity
  shadowingLemmaClosed : H.shadowingLemma
  closingLemmaClosed : H.closingLemma
  anosovPropertyClosed : H.anosovProperty

def HyperbolicityClosed {M : Type} [TopologicalSpace M] [MetricSpace M] {f : M → M}
    (H : HyperbolicityPackage M f) : Prop :=
  H.uniformHyperbolicity ∧ H.shadowingLemma ∧ H.closingLemma ∧ H.anosovProperty

theorem hyperbolicity_closed_from_evidence {M : Type} [TopologicalSpace M] [MetricSpace M]
    {f : M → M} (H : HyperbolicityPackage M f) (E : HyperbolicityEvidence H) :
    HyperbolicityClosed H := by
  exact And.intro E.uniformHyperbolicityClosed
    (And.intro E.shadowingLemmaClosed
      (And.intro E.closingLemmaClosed E.anosovPropertyClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse