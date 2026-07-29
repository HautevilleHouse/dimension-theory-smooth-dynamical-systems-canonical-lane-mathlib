import canonicalLaneMathlib.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure DominantLyapunovExponentPackage where
  largestExponent : ℝ
  exponentialGrowthRate : Prop
  multiplicativeErgodicTheorem : Prop
  osedelecMultiplicative : Prop

def dominantClosed (D : DominantLyapunovExponentPackage) : Prop :=
  D.exponentialGrowthRate ∧ D.multiplicativeErgodicTheorem ∧ D.osedelecMultiplicative

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse