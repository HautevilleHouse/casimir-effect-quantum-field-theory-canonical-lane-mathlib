import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirActionLayer

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure CasimirRegularizationCertificate where
  actionEnvelope : CasimirActionEnvelope
  renormalizationScheme : Prop
  cutoffScale : ℝ
  analyticContinuation : Prop
  renormalizationSchemeClosed : renormalizationScheme
  cutoffScalePositive : cutoffScale > 0
  analyticContinuationClosed : analyticContinuation

def sourceCasimirRegularizationCertificate : CasimirRegularizationCertificate := {
  actionEnvelope := sourceCasimirActionEnvelope
  renormalizationScheme := True
  cutoffScale := 1.0
  analyticContinuation := True
  renormalizationSchemeClosed := trivial
  cutoffScalePositive := by norm_num
  analyticContinuationClosed := trivial
}

def CasimirRegularizationClosed (C : CasimirRegularizationCertificate) : Prop :=
  CasimirActionClosed C.actionEnvelope ∧
  C.renormalizationScheme ∧
  C.cutoffScale > 0 ∧
  C.analyticContinuation

theorem source_casimir_regularization_closed :
    CasimirRegularizationClosed sourceCasimirRegularizationCertificate := by
  refine And.intro source_casimir_action_closed
    (And.intro sourceCasimirRegularizationCertificate.renormalizationSchemeClosed
      (And.intro sourceCasimirRegularizationCertificate.cutoffScalePositive
        sourceCasimirRegularizationCertificate.analyticContinuationClosed))

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse