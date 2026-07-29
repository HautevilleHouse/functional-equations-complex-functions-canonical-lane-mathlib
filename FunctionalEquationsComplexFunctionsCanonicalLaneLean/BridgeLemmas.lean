import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FunctionalEquationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
