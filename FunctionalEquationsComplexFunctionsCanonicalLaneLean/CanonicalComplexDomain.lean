import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure ComplexFunction where
  domain : Type u
  codomain : Type v
  map : domain → codomain
  holomorphic : Prop
  meromorphic : Prop

definition analyticFunction (f : ComplexFunction) : Prop :=
  f.holomorphic ∨ f.meromorphic

structure CauchyAdmittedObject where
  function : ComplexFunction
  cauchyIntegralFormula : Prop
  analyticContinuation : Prop
  residueTheorem : Prop
  conclusion : Prop

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse