import canonicalLaneMathlib.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure DiffeoEntropyPackage where
  entropyFunctional : Type u
  shannonEntropy : Type v
  kolmogorovSinaiEntropy : Type w
  metricEntropy : Type x
  entropyMonotonicity : Prop

def entropyClosed (E : DiffeoEntropyPackage) : Prop :=
  E.entropyMonotonicity

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse