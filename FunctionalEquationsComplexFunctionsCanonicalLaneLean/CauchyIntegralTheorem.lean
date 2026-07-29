import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure CauchyIntegralPackage where
  contour : ℂ → ℂ
  domain : Set ℂ
  holomorphicOnDomain : Prop
  integralFormula : Prop
  cauchyEstimates : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  holomorphicOnDomainClosed : C.holomorphicOnDomain
  integralFormulaClosed : C.integralFormula
  cauchyEstimatesClosed : C.cauchyEstimates

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.holomorphicOnDomain ∧ C.integralFormula ∧ C.cauchyEstimates

theorem cauchy_integral_closed_from_evidence
    (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) :
    CauchyIntegralClosed C := by
  exact And.intro E.holomorphicOnDomainClosed
    (And.intro E.integralFormulaClosed E.cauchyEstimatesClosed)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse