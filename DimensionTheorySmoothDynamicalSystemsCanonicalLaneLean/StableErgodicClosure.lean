import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure StableErgodicClosurePackage where
  hopfArgument : Prop
  absoluteContinuity : Prop
  stableErgodicity : Prop
  accessibleDynamicalSystem : Prop

structure StableErgodicClosureEvidence (S : StableErgodicClosurePackage) where
  hopfArgumentClosed : S.hopfArgument
  absoluteContinuityClosed : S.absoluteContinuity
  stableErgodicityClosed : S.stableErgodicity
  accessibleDynamicalSystemClosed : S.accessibleDynamicalSystem

def StableErgodicClosureClosed (S : StableErgodicClosurePackage) : Prop :=
  S.hopfArgument ∧ S.absoluteContinuity ∧ S.stableErgodicity ∧ S.accessibleDynamicalSystem

theorem stable_ergodic_closure_closed_from_evidence
    (S : StableErgodicClosurePackage) (Ev : StableErgodicClosureEvidence S) :
    StableErgodicClosureClosed S := by
  exact And.intro Ev.hopfArgumentClosed (And.intro Ev.absoluteContinuityClosed
    (And.intro Ev.stableErgodicityClosed Ev.accessibleDynamicalSystemClosed))

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
