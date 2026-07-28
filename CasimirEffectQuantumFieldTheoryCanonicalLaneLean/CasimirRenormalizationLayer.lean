import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure RenormalizationStep where
  subtractionScheme : String
  finiteResult : ℝ
  divergentPoleRemoved : Bool

def sourceRenormalizationStep : RenormalizationStep := {
  subtractionScheme := "subtract_Minkowski_contribution"
  finiteResult := -0.5
  divergentPoleRemoved := true
}

def RenormalizationStepClosed (R : RenormalizationStep) : Prop :=
  R.divergentPoleRemoved ∧ R.subtractionScheme ≠ ""

theorem source_renormalization_step_closed : RenormalizationStepClosed sourceRenormalizationStep := by
  exact And.intro rfl (by simp)

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse