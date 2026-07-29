import canonicaLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure SmoothDynamicalSystem where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  flow : Flow ℝ manifold

delcation SmoothDynamicalSystem (M : Type u) [TopologicalSpace M] : Prop where
  manifoldSmooth : Prop
  flowSmooth : Prop

structure AdmittedObject where
  system : SmoothDynamicalSystem
  invariantMeasure : Prop
  entropyPositive : Prop
  conclusion : invariantMeasure ∧ entropyPositive

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
