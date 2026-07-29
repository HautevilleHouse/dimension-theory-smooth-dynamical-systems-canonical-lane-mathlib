import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure EntropyPackage where
  topologicalEntropy : ℝ
  measureTheoreticEntropy : ℝ
  variationalPrinciple : Prop
  entropyExpansiveness : Prop
  entropyDensity : Prop

structure EntropyEvidence (E : EntropyPackage) where
  variationalPrincipleClosed : E.variationalPrinciple
  entropyExpansivenessClosed : E.entropyExpansiveness
  entropyDensityClosed : E.entropyDensity

def EntropyClosed (E : EntropyPackage) : Prop :=
  E.variationalPrinciple ∧ E.entropyExpansiveness ∧ E.entropyDensity

theorem entropy_closed_from_evidence (E : EntropyPackage) (Ev : EntropyEvidence E) : EntropyClosed E := by
  exact And.intro Ev.variationalPrincipleClosed
    (And.intro Ev.entropyExpansivenessClosed Ev.entropyDensityClosed)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
