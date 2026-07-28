import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure VacuumState where
  fieldModeCount : Nat
  zeroPointEnergy : ℝ
  modeSumConvergent : Bool

def sourceVacuumState : VacuumState := {
  fieldModeCount := 1000
  zeroPointEnergy := 0.5
  modeSumConvergent := true
}

def VacuumStateClosed (V : VacuumState) : Prop :=
  V.modeSumConvergent

theorem source_vacuum_state_closed : VacuumStateClosed sourceVacuumState := by
  rfl

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse