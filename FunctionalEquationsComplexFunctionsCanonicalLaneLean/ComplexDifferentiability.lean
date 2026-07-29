import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure HolomorphicFunction where
  domain : Set ℂ
  f : ℂ → ℂ
  complexDifferentiable : ∀ z ∈ domain, DifferentiableAt ℂ f z

structure ComplexDifferentiabilityPackage where
  holomorphic : HolomorphicFunction
  cauchyRiemannEquations : Prop
  conformalProperty : Prop
  analyticContinuationUniqueness : Prop

structure ComplexDifferentiabilityEvidence (C : ComplexDifferentiabilityPackage) where
  cauchyRiemannEquationsClosed : C.cauchyRiemannEquations
  conformalPropertyClosed : C.conformalProperty
  analyticContinuationUniquenessClosed : C.analyticContinuationUniqueness

def ComplexDifferentiabilityClosed (C : ComplexDifferentiabilityPackage) : Prop :=
  C.cauchyRiemannEquations ∧ C.conformalProperty ∧ C.analyticContinuationUniqueness

theorem complex_differentiability_closed_from_evidence
    (C : ComplexDifferentiabilityPackage) (E : ComplexDifferentiabilityEvidence C) :
    ComplexDifferentiabilityClosed C := by
  exact And.intro E.cauchyRiemannEquationsClosed
    (And.intro E.conformalPropertyClosed E.analyticContinuationUniquenessClosed)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse