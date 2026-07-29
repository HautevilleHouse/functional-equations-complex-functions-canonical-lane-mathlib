import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure RiemannMappingPackage where
  domain : Set ℂ
  simplyConnected : Prop
  conformalMap : ℂ → ℂ
  mapsToUnitDisc : Prop
  uniquenessUpToAutomorphism : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedClosed : R.simplyConnected
  conformalMapClosed : R.conformalMap
  mapsToUnitDiscClosed : R.mapsToUnitDisc
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnected ∧ R.conformalMap ∧ R.mapsToUnitDisc ∧ R.uniquenessUpToAutomorphism

theorem riemann_mapping_closed_from_evidence
    (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.conformalMapClosed
      (And.intro E.mapsToUnitDiscClosed E.uniquenessUpToAutomorphismClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse