import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure TopologicalEntropyPackage where
  entropyFunction : Type
  growthRate : Type
  invarianceUnderConjugacy : Prop
  finiteEntropyCriterion : Prop

structure TopologicalEntropyEvidence (T : TopologicalEntropyPackage) where
  invarianceUnderConjugacyClosed : T.invarianceUnderConjugacy
  finiteEntropyCriterionClosed : T.finiteEntropyCriterion

def TopologicalEntropyClosed (T : TopologicalEntropyPackage) : Prop :=
  T.invarianceUnderConjugacy ∧ T.finiteEntropyCriterion

theorem topological_entropy_closed_from_evidence (T : TopologicalEntropyPackage)
    (E : TopologicalEntropyEvidence T) : TopologicalEntropyClosed T := by
  exact And.intro E.invarianceUnderConjugacyClosed E.finiteEntropyCriterionClosed

structure InvariantMeasurePackage where
  measureSpace : Type
  invariantMeasures : Type
  krylovBogolyubovTheorem : Prop
  ergodicDecomposition : Prop

structure InvariantMeasureEvidence (M : InvariantMeasurePackage) where
  krylovBogolyubovTheoremClosed : M.krylovBogolyubovTheorem
  ergodicDecompositionClosed : M.ergodicDecomposition

def InvariantMeasureClosed (M : InvariantMeasurePackage) : Prop :=
  M.krylovBogolyubovTheorem ∧ M.ergodicDecomposition

theorem invariant_measure_closed_from_evidence (M : InvariantMeasurePackage)
    (E : InvariantMeasureEvidence M) : InvariantMeasureClosed M := by
  exact And.intro E.krylovBogolyubovTheoremClosed E.ergodicDecompositionClosed

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse