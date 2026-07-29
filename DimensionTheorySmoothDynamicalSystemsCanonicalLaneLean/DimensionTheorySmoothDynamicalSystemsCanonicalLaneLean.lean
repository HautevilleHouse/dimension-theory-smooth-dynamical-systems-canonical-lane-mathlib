import canonicalLaneMathlib.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionAdmissibleClass
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DiffeoEntropy
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.LyapunovSpectrum
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.SmoothInvariantMeasures
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.HausdorffDimension
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DominantLyapunovExponent

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object in
  O.dimensionTopology ∧ O.smoothStructure

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedDimensionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dimension_endgame (A : AdmissibleClass) : ConstrainedDimensionClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse