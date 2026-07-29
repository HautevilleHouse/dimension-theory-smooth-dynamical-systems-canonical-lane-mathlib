import canonicalLaneMathlib.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure HausdorffDimensionPackage where
  hausdorffMeasure : Type u
  dimensionDefined : Prop
  boxCountingDimension : Prop
  youngDimensionInequality : Prop

def dimensionClosed (H : HausdorffDimensionPackage) : Prop :=
  H.dimensionDefined ∧ H.boxCountingDimension ∧ H.youngDimensionInequality

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse