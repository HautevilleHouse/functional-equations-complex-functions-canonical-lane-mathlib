import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure RungeTheoryPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  compactSubset : Type v
  rationalApproximation : Prop
  polynomialApproximation : Prop
  rungeTheorem : Prop

structure RungeTheoryEvidence (R : RungeTheoryPackage) where
  rationalApproximationClosed : R.rationalApproximation
  polynomialApproximationClosed : R.polynomialApproximation
  rungeTheoremClosed : R.rungeTheorem

def RungeTheoryClosed (R : RungeTheoryPackage) : Prop :=
  R.rationalApproximation ∧ R.polynomialApproximation ∧ R.rungeTheorem

theorem runge_theory_closed_from_evidence (R : RungeTheoryPackage)
    (E : RungeTheoryEvidence R) : RungeTheoryClosed R := by
  exact And.intro E.rationalApproximationClosed
    (And.intro E.polynomialApproximationClosed E.rungeTheoremClosed)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
