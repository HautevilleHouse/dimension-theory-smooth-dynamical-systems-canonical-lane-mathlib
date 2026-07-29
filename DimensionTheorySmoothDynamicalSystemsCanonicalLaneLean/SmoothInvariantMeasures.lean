import canonicalLaneMathlib.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure SmoothInvariantMeasuresPackage where
  invariantMeasure : Type u
  smoothness : Prop
  ergodicDecomposition : Prop
  pesinEntropyFormula : Prop

def measuresClosed (M : SmoothInvariantMeasuresPackage) : Prop :=
  M.smoothness ∧ M.ergodicDecomposition ∧ M.pesinEntropyFormula

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse