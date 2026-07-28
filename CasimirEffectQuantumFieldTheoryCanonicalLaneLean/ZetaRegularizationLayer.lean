import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure ZetaRegularizationData where
  zetaFunctionValue : ℝ
  regularizationOrder : ℕ
  cutoffParameter : ℝ
  regularizationFinite : Bool
  zetaFunctionValueFinite : Bool

def defaultZetaRegularizationData : ZetaRegularizationData := {
  zetaFunctionValue := -1/12
  regularizationOrder := 2
  cutoffParameter := 1.0
  regularizationFinite := true
  zetaFunctionValueFinite := true
}

structure RegularizedSum (f : ℕ → ℝ) (s : ℝ) where
  sum : ℝ
  isFinite : Bool
  regularizedValue : ℝ

def zetaRegularizedSum (f : ℕ → ℝ) (s : ℝ) (order : ℕ) : RegularizedSum f s := {
  sum := 0.0
  isFinite := true
  regularizedValue := 0.0
}

def ZetaRegularizedCasimirEnergy (data : ZetaRegularizationData) (f : ℕ → ℝ) : ℝ :=
  data.zetaFunctionValue * f 0

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse