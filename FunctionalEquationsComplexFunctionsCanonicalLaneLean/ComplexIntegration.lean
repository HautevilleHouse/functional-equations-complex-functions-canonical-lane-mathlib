import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure ComplexIntegrationPackage where
  contour : Type u
  integrand : Type v
  pathRegularity : Prop
  integralDefined : Prop
  cauchyIntegralTheorem : Prop
  residueTheorem : Prop

structure ComplexIntegrationEvidence (P : ComplexIntegrationPackage) where
  pathRegularityClosed : P.pathRegularity
  integralDefinedClosed : P.integralDefined
  cauchyIntegralTheoremClosed : P.cauchyIntegralTheorem
  residueTheoremClosed : P.residueTheorem

def ComplexIntegrationClosed (P : ComplexIntegrationPackage) : Prop :=
  P.pathRegularity ∧ P.integralDefined ∧ P.cauchyIntegralTheorem ∧ P.residueTheorem

theorem complex_integration_closed_from_evidence (P : ComplexIntegrationPackage)
    (E : ComplexIntegrationEvidence P) : ComplexIntegrationClosed P := by
  exact And.intro E.pathRegularityClosed (And.intro E.integralDefinedClosed
    (And.intro E.cauchyIntegralTheoremClosed E.residueTheoremClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
