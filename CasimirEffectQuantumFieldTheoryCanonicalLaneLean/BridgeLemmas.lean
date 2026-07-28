import CasimirEffectQuantumFieldTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CasimirEffectQuantumFieldTheoryCanonicalLaneLean

def bridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.sourceKeyChecked ∧ O.theoremObjectChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A.object := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end CasimirEffectQuantumFieldTheoryCanonicalLaneLean
end HautevilleHouse