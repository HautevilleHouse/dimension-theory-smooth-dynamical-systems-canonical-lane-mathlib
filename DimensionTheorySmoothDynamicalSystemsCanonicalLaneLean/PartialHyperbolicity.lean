import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure PartialHyperbolicityPackage where
  tangentBundleSplitting : Prop
  dominatedSplitting : Prop
  uniformContractionExpansion : Prop
  plaqueFamily : Prop

structure PartialHyperbolicityEvidence (P : PartialHyperbolicityPackage) where
  tangentBundleSplittingClosed : P.tangentBundleSplitting
  dominatedSplittingClosed : P.dominatedSplitting
  uniformContractionExpansionClosed : P.uniformContractionExpansion
  plaqueFamilyClosed : P.plaqueFamily

def PartialHyperbolicityClosed (P : PartialHyperbolicityPackage) : Prop :=
  P.tangentBundleSplitting ∧ P.dominatedSplitting ∧ P.uniformContractionExpansion ∧ P.plaqueFamily

theorem partial_hyperbolicity_closed_from_evidence
    (P : PartialHyperbolicityPackage) (Ev : PartialHyperbolicityEvidence P) :
    PartialHyperbolicityClosed P := by
  exact And.intro Ev.tangentBundleSplittingClosed (And.intro Ev.dominatedSplittingClosed
    (And.intro Ev.uniformContractionExpansionClosed Ev.plaqueFamilyClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
