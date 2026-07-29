import canonicalLaneMathlib.AdmissibleClass
import FunctionalEquationsComplexFunctionsCanonicalLaneLean.ComplexIntegration
import FunctionalEquationsComplexFunctionsCanonicalLaneLean.RiemannMapping
import FunctionalEquationsComplexFunctionsCanonicalLaneLean.AnalyticContinuation
import FunctionalEquationsComplexFunctionsCanonicalLaneLean.ValueDistribution

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure FunctionalEquationTopPackage where
  integration : ComplexIntegrationPackage
  mapping : RiemannMappingPackage
  continuation : AnalyticContinuationPackage
  valueDistribution : ValueDistributionPackage

structure FunctionalEquationTopEvidence (F : FunctionalEquationTopPackage) where
  integrationClosed : ComplexIntegrationClosed F.integration
  mappingClosed : RiemannMappingClosed F.mapping
  continuationClosed : AnalyticContinuationClosed F.continuation
  valueDistributionClosed : ValueDistributionClosed F.valueDistribution

def FunctionalEquationTopClosed (F : FunctionalEquationTopPackage) : Prop :=
  ComplexIntegrationClosed F.integration ∧ RiemannMappingClosed F.mapping ∧
  AnalyticContinuationClosed F.continuation ∧ ValueDistributionClosed F.valueDistribution

theorem functional_equation_top_closed_from_evidence (F : FunctionalEquationTopPackage)
    (E : FunctionalEquationTopEvidence F) : FunctionalEquationTopClosed F := by
  exact And.intro E.integrationClosed (And.intro E.mappingClosed
    (And.intro E.continuationClosed E.valueDistributionClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
