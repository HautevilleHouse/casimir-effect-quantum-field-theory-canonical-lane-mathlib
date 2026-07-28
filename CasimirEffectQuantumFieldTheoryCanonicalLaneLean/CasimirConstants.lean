import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure CasimirConstants where
  plateSeparation : ℝ
  hbar : ℝ
  c : ℝ
  forceConstant : ℝ
  zetaRegularizationOrder : ℕ
  plateSeparationPositive : plateSeparation > 0
  hbarPositive : hbar > 0
  cPositive : c > 0
  forceConstantPositive : forceConstant > 0

def defaultCasimirConstants : CasimirConstants := {
  plateSeparation := 1.0
  hbar := 1.0
  c := 1.0
  forceConstant := -π² / 240
  zetaRegularizationOrder := 2
  plateSeparationPositive := by norm_num
  hbarPositive := by norm_num
  cPositive := by norm_num
  forceConstantPositive := by
    have : π² / 240 > 0 := by positivity
    linarith
}

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse