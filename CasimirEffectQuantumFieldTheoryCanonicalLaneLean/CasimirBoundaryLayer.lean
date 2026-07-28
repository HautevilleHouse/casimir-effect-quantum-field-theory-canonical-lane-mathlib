import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

structure BoundaryCondition where
  geometry : String
  separation : ℝ
  boundaryConditionType : String

def sourceBoundaryCondition : BoundaryCondition := {
  geometry := "parallel_plates"
  separation := 1.0
  boundaryConditionType := "Dirichlet"
}

def BoundaryConditionClosed (B : BoundaryCondition) : Prop :=
  B.geometry = "parallel_plates" ∧ B.separation > 0

theorem source_boundary_condition_closed : BoundaryConditionClosed sourceBoundaryCondition := by
  constructor <;> rfl

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse