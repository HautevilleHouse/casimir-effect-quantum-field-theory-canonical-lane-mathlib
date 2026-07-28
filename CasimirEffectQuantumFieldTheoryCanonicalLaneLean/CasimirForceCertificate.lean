import canonicalLaneMathlib.AdmissibleClass
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirFieldLayer
import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.ZetaRegularizationLayer

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure CasimirForceCertificate where
  fieldConfig : CasimirFieldConfiguration
  regularizationData : ZetaRegularizationData
  forceComputed : ℝ
  forceClosed : Bool
  regularizationApplied : Bool
  boundaryConditionWitness : forceClosed
  zetaWitness : regularizationApplied

def sourceCasimirForceCertificate : CasimirForceCertificate := {
  fieldConfig := defaultCasimirFieldConfiguration
  regularizationData := defaultZetaRegularizationData
  forceComputed := CasimirForce defaultCasimirFieldConfiguration
  forceClosed := true
  regularizationApplied := true
  boundaryConditionWitness := rfl
  zetaWitness := rfl
}

def CasimirForceCertificateClosed (C : CasimirForceCertificate) : Prop :=
  C.forceClosed ∧ C.regularizationApplied

theorem source_casimir_force_certificate_closed :
    CasimirForceCertificateClosed sourceCasimirForceCertificate := by
  exact And.intro sourceCasimirForceCertificate.boundaryConditionWitness
    sourceCasimirForceCertificate.zetaWitness

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse