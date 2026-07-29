import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure ValueDistributionPackage where
  meromorphicFunction : Type u
  targetValue : Type v
  deficiency : Prop
  nevanlinnaCharacteristic : Prop
  defectRelation : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  deficiencyClosed : V.deficiency
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.deficiency ∧ V.nevanlinnaCharacteristic ∧ V.defectRelation

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.deficiencyClosed (And.intro E.nevanlinnaCharacteristicClosed E.defectRelationClosed)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
