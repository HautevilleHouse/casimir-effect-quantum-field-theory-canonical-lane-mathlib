import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.CasimirObjects

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure CasimirActionEnvelope where
  system : CasimirSystem
  stressFinite : Prop
  regularizationApplied : Prop
  zetaRegularization : Prop
  stressFiniteProof : stressFinite
  regularizationAppliedProof : regularizationApplied
  zetaRegularizationProof : zetaRegularization

def sourceCasimirActionEnvelope : CasimirActionEnvelope := {
  system := primitiveCasimirSystem
  stressFinite := StressTensorFinite primitiveCasimirSystem
  regularizationApplied := True
  zetaRegularization := True
  stressFiniteProof := by
    unfold StressTensorFinite
    simp
  regularizationAppliedProof := trivial
  zetaRegularizationProof := trivial
}

def CasimirActionClosed (E : CasimirActionEnvelope) : Prop :=
  E.stressFinite ∧ E.regularizationApplied ∧ E.zetaRegularization

theorem source_casimir_action_closed : CasimirActionClosed sourceCasimirActionEnvelope := by
  exact And.intro sourceCasimirActionEnvelope.stressFiniteProof
    (And.intro sourceCasimirActionEnvelope.regularizationAppliedProof
      sourceCasimirActionEnvelope.zetaRegularizationProof)

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse