import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirRegularizationLayer
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

-- Define the admitted theorem object and admissible class

def casimirAdmittedObject : AdmittedTheoremObject := {
  object := {
    sourceKey := "Casimir Effect Quantum Field Theory"
    theoremObject := "Casimir energy density for parallel plates"
    claimBoundary := "regularized energy density is finite and attractive"
  }
  localWitness := "Casimir certificate with regularization and analytic continuation"
  bridgeEvidence := "source-derived Lean certificate fields"
  sourceKeyChecked := rfl
  theoremObjectChecked := rfl
}

def casimirAdmissibleClass : AdmissibleClass := {
  object := casimirAdmittedObject
  endpointSatisfied := CasimirSystemWellDefined primitiveCasimirSystem
  remainderRecorded := True
  gateWitness := Or.inl (by exact primitive_casimir_system_well_defined)
}

def CasimirAdmittedClosure : Prop :=
  CasimirRegularizationClosed sourceCasimirRegularizationCertificate ∧
  ConstrainedCasimirClosure casimirAdmissibleClass

theorem casimir_admitted_closure_checked : CasimirAdmittedClosure := by
  exact And.intro source_casimir_regularization_closed
    (constrained_casimir_closure casimirAdmissibleClass)

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse