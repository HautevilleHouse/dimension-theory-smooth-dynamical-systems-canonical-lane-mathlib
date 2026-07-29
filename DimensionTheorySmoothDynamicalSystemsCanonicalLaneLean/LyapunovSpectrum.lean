import canonicalLaneMathlib.AdmissibleClass
import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.DimensionAdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure LyapunovSpectrumPackage where
  lyapunovExponents : List ℝ
  spectrumBounded : Prop
  osedelecTheorem : Prop

def lyapunovSpectrumClosed (L : LyapunovSpectrumPackage) : Prop :=
  L.spectrumBounded ∧ L.osedelecTheorem

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse