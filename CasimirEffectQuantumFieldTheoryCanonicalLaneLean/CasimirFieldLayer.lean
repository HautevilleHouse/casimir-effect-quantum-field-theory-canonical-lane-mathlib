import canonicalLaneMathlib.AdmissibleClass
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirConstants

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure VacuumFluctuationState where
  fieldMode : ℕ → ℝ
  zeroPointEnergy : ℝ
  modeCount : ℕ
  energyFinite : Bool

def defaultVacuumFluctuationState : VacuumFluctuationState := {
  fieldMode := λ n => 1.0 / (n+1)
  zeroPointEnergy := -1.0
  modeCount := 1000
  energyFinite := true
}

structure CasimirFieldConfiguration where
  constants : CasimirConstants
  vacuumState : VacuumFluctuationState
  plateSeparation : ℝ
  fieldModeCutoff : ℕ
  plateSeparationMatchesConstants : plateSeparation = constants.plateSeparation

def defaultCasimirFieldConfiguration : CasimirFieldConfiguration := {
  constants := defaultCasimirConstants
  vacuumState := defaultVacuumFluctuationState
  plateSeparation := defaultCasimirConstants.plateSeparation
  fieldModeCutoff := 1000
  plateSeparationMatchesConstants := rfl
}

def StressEnergyTensorComponent (config : CasimirFieldConfiguration) (i j : ℕ) : ℝ := 0.0

def CasimirForce (config : CasimirFieldConfiguration) : ℝ :=
  config.constants.forceConstant / (config.plateSeparation ^ 4)

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse