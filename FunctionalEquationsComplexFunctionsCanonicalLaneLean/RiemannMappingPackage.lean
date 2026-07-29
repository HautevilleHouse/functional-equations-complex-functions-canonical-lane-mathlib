import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.RiemannSphere

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Type u
  topology : TopologicalSpace simplyConnectedDomain
  complexStructure : ComplexStructure simplyConnectedDomain
  boundaryNonempty : Prop
  riemannMappingExists : Prop
  mappingFunctionHolomorphic : Prop
  mappingFunctionBijective : Prop
  uniformizationConsequence : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  riemannMappingExistsClosed : R.riemannMappingExists
  mappingFunctionHolomorphicClosed : R.mappingFunctionHolomorphic
  mappingFunctionBijectiveClosed : R.mappingFunctionBijective
  uniformizationConsequenceClosed : R.uniformizationConsequence

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.riemannMappingExists ∧ R.mappingFunctionHolomorphic ∧ R.mappingFunctionBijective ∧ R.uniformizationConsequence

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R :=
  And.intro E.riemannMappingExistsClosed (And.intro E.mappingFunctionHolomorphicClosed (And.intro E.mappingFunctionBijectiveClosed E.uniformizationConsequenceClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse