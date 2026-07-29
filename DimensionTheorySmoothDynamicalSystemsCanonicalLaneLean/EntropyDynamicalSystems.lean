import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure EntropyDynamicalSystemsPackage where
  metricEntropy : Prop
  topologicalEntropy : Prop
  measureTheoreticEntropy : Prop
  variationalPrinciple : Prop

structure EntropyDynamicalSystemsEvidence (E : EntropyDynamicalSystemsPackage) where
  metricEntropyClosed : E.metricEntropy
  topologicalEntropyClosed : E.topologicalEntropy
  measureTheoreticEntropyClosed : E.measureTheoreticEntropy
  variationalPrincipleClosed : E.variationalPrinciple

def EntropyDynamicalSystemsClosed (E : EntropyDynamicalSystemsPackage) : Prop :=
  E.metricEntropy ∧ E.topologicalEntropy ∧ E.measureTheoreticEntropy ∧ E.variationalPrinciple

theorem entropy_dynamical_systems_closed_from_evidence
    (E : EntropyDynamicalSystemsPackage) (Ev : EntropyDynamicalSystemsEvidence E) :
    EntropyDynamicalSystemsClosed E := by
  exact And.intro Ev.metricEntropyClosed (And.intro Ev.topologicalEntropyClosed
    (And.intro Ev.measureTheoreticEntropyClosed Ev.variationalPrincipleClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
