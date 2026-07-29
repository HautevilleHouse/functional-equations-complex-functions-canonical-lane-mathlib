import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunction : Type v
  cauchyIntegralFormula : Prop
  cauchyIntegralTheorem : Prop
  cauchyEstimates : Prop
  morerasTheorem : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  cauchyIntegralTheoremClosed : C.cauchyIntegralTheorem
  cauchyEstimatesClosed : C.cauchyEstimates
  morerasTheoremClosed : C.morerasTheorem

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.cauchyIntegralTheorem ∧ C.cauchyEstimates ∧ C.morerasTheorem

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed
    (And.intro E.cauchyIntegralTheoremClosed
      (And.intro E.cauchyEstimatesClosed E.morerasTheoremClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
