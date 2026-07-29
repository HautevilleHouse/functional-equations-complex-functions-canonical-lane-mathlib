import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Analytic

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure AnalyticContinuationPackage where
  sourceFunction : Type u
  sourceDomain : Type v
  targetDomain : Type w
  topologicalSource : TopologicalSpace sourceDomain
  topologicalTarget : TopologicalSpace targetDomain
  complexSource : ComplexStructure sourceDomain
  complexTarget : ComplexStructure targetDomain
  continuationExists : Prop
  continuationHolomorphic : Prop
  uniquenessTheorem : Prop
  monodromyTheorem : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  continuationExistsClosed : A.continuationExists
  continuationHolomorphicClosed : A.continuationHolomorphic
  uniquenessTheoremClosed : A.uniquenessTheorem
  monodromyTheoremClosed : A.monodromyTheorem

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.continuationExists ∧ A.continuationHolomorphic ∧ A.uniquenessTheorem ∧ A.monodromyTheorem

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A :=
  And.intro E.continuationExistsClosed (And.intro E.continuationHolomorphicClosed (And.intro E.uniquenessTheoremClosed E.monodromyTheoremClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse