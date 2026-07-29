import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Type u
  topology : TopologicalSpace simplyConnectedDomain
  complexStructure : ComplexStructure simplyConnectedDomain
  conformalEquivalence : Type v
  riemannMappingTheorem : Prop
  conformalAutomorphism : Prop
  uniformization : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  riemannMappingTheoremClosed : R.riemannMappingTheorem
  conformalAutomorphismClosed : R.conformalAutomorphism
  uniformizationClosed : R.uniformization

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.riemannMappingTheorem ∧ R.conformalAutomorphism ∧ R.uniformization

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.riemannMappingTheoremClosed
    (And.intro E.conformalAutomorphismClosed E.uniformizationClosed)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
