import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure PesinPackage where
  lyapunovExponents : LyapunovExponentPackage
  entropyFormula : Prop
  hyperbolicStructure : Prop
  SRBMeasure : Prop

structure PesinEvidence (P : PesinPackage) where
  entropyFormulaClosed : P.entropyFormula
  hyperbolicStructureClosed : P.hyperbolicStructure
  SRBMeasureClosed : P.SRBMeasure

def PesinClosed (P : PesinPackage) : Prop :=
  P.entropyFormula ∧ P.hyperbolicStructure ∧ P.SRBMeasure

theorem pesin_closed_from_evidence (P : PesinPackage) (Ev : PesinEvidence P) : PesinClosed P := by
  exact And.intro Ev.entropyFormulaClosed (And.intro Ev.hyperbolicStructureClosed Ev.SRBMeasureClosed)

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
