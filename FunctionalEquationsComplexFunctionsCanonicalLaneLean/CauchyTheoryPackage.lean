import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.CauchyIntegral

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunctions : Type v
  cauchyIntegralFormula : Prop
  analyticContinuation : Prop
  residueTheorem : Prop
  windingNumberDefined : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticContinuationClosed : C.analyticContinuation
  residueTheoremClosed : C.residueTheorem
  windingNumberDefinedClosed : C.windingNumberDefined

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.analyticContinuation ∧ C.residueTheorem ∧ C.windingNumberDefined

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) :
    CauchyTheoryClosed C :=
  And.intro E.cauchyIntegralFormulaClosed (And.intro E.analyticContinuationClosed (And.intro E.residueTheoremClosed E.windingNumberDefinedClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse