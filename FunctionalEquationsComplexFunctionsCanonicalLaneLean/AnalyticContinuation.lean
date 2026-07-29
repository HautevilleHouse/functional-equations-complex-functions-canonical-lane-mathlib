import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure AnalyticContinuationPackage where
  originalFunction : Type u
  domain : Type v
  continuationDomain : Type w
  analyticExtension : Prop
  uniquenessAlongPaths : Prop
  monodromyTheorem : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  analyticExtensionClosed : A.analyticExtension
  uniquenessAlongPathsClosed : A.uniquenessAlongPaths
  monodromyTheoremClosed : A.monodromyTheorem

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.analyticExtension ∧ A.uniquenessAlongPaths ∧ A.monodromyTheorem

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.analyticExtensionClosed (And.intro E.uniquenessAlongPathsClosed E.monodromyTheoremClosed)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
