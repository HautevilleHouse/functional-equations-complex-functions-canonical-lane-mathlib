import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

def ConstrainedFunctionalEquationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_equations_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalEquationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
