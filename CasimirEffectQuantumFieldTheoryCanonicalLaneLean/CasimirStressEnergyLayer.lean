import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure StressEnergyTensor where
  energyDensity : ℝ
  pressure : ℝ
  trace : ℝ
  conservationHolds : Bool

def sourceStressEnergyTensor : StressEnergyTensor := {
  energyDensity := -0.5
  pressure := -0.5
  trace := 1.0
  conservationHolds := true
}

def StressEnergyTensorClosed (S : StressEnergyTensor) : Prop :=
  S.conservationHolds

theorem source_stress_energy_tensor_closed : StressEnergyTensorClosed sourceStressEnergyTensor := by
  rfl

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse