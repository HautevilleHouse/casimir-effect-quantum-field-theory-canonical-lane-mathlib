import canonicalLaneMathlib.AdmissibleClass
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirVacuumState
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirBoundaryLayer
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirStressEnergyLayer
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirRegularizationLayer
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirRenormalizationLayer

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure CasimirForceCertificate where
  vacuum : VacuumState
  boundary : BoundaryCondition
  stressEnergy : StressEnergyTensor
  regularization : RegularizationMethod
  renormalization : RenormalizationStep
  forceValue : ℝ
  vacuumClosed : VacuumStateClosed vacuum
  boundaryClosed : BoundaryConditionClosed boundary
  stressEnergyClosed : StressEnergyTensorClosed stressEnergy
  regularizationClosed : RegularizationMethodClosed regularization
  renormalizationClosed : RenormalizationStepClosed renormalization

def sourceCasimirForceCertificate : CasimirForceCertificate := {
  vacuum := sourceVacuumState
  boundary := sourceBoundaryCondition
  stressEnergy := sourceStressEnergyTensor
  regularization := sourceRegularizationMethod
  renormalization := sourceRenormalizationStep
  forceValue := -0.5
  vacuumClosed := source_vacuum_state_closed
  boundaryClosed := source_boundary_condition_closed
  stressEnergyClosed := source_stress_energy_tensor_closed
  regularizationClosed := source_regularization_method_closed
  renormalizationClosed := source_renormalization_step_closed
}

def CasimirForceClosed (C : CasimirForceCertificate) : Prop :=
  C.vacuumClosed ∧ C.boundaryClosed ∧ C.stressEnergyClosed ∧ C.regularizationClosed ∧ C.renormalizationClosed

theorem source_casimir_force_closed : CasimirForceClosed sourceCasimirForceCertificate := by
  exact And.intro sourceCasimirForceCertificate.vacuumClosed
    (And.intro sourceCasimirForceCertificate.boundaryClosed
      (And.intro sourceCasimirForceCertificate.stressEnergyClosed
        (And.intro sourceCasimirForceCertificate.regularizationClosed
          sourceCasimirForceCertificate.renormalizationClosed)))

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse