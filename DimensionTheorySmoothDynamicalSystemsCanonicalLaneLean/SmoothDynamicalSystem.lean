import DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean

structure SmoothDynamicalSystem where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  flow : ℝ → manifold → manifold
  flowSmooth : Prop
  flowGroupAction : Prop

def DSWitnessClosed (S : SmoothDynamicalSystem) : Prop :=
  S.flowSmooth ∧ S.flowGroupAction

structure DSAdmittedObject where
  system : SmoothDynamicalSystem
  conclusion : DSWitnessClosed system.system

end DimensionTheorySmoothDynamicalSystemsCanonicalLaneLean
end HautevilleHouse
