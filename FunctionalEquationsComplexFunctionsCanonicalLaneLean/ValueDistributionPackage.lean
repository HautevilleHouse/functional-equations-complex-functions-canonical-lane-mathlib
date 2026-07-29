import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsComplexFunctionsCanonicalLaneLean.CanonicalComplexDomain

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure ValueDistributionPackage (A : CauchyAdmittedObject) where
  greatPicardTheorem : Prop
  littlePicardTheorem : Prop
  nevanlinnaTheory : Prop
  valueDistributionClosed : A.residueTheorem

definition ValueDistributionClosed (A : CauchyAdmittedObject) : Prop :=
  A.residueTheorem

theorem value_distribution_closed (A : CauchyAdmittedObject) : ValueDistributionClosed A :=
  A.residueTheorem

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse