import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure LyapunovExponentPackage where
  flow : Type u
  linearization : Type v
  exponents : List ℝ
  multiplicativeErgodicTheorem : Prop
  stableUnstableManifolds : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  multiplicativeErgodicTheoremClosed : L.multiplicativeErgodicTheorem
  stableUnstableManifoldsClosed : L.stableUnstableManifolds

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.multiplicativeErgodicTheorem ∧ L.stableUnstableManifolds

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (Ev : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro Ev.multiplicativeErgodicTheoremClosed Ev.stableUnstableManifoldsClosed

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
