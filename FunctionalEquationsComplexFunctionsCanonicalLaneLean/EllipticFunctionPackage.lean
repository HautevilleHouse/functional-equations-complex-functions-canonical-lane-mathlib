import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Elliptic

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure EllipticFunctionPackage where
  lattice : Type u
  topology : TopologicalSpace lattice
  complexStructure : ComplexStructure lattice
  doublyPeriodic : Prop
  ellipticFunctionDefined : Prop
  weierstrassPFunction : Prop
  jInvariant : Prop
  additionTheorem : Prop

structure EllipticFunctionEvidence (E : EllipticFunctionPackage) where
  doublyPeriodicClosed : E.doublyPeriodic
  ellipticFunctionDefinedClosed : E.ellipticFunctionDefined
  weierstrassPFunctionClosed : E.weierstrassPFunction
  jInvariantClosed : E.jInvariant
  additionTheoremClosed : E.additionTheorem

def EllipticFunctionClosed (E : EllipticFunctionPackage) : Prop :=
  E.doublyPeriodic ∧ E.ellipticFunctionDefined ∧ E.weierstrassPFunction ∧ E.jInvariant ∧ E.additionTheorem

theorem elliptic_function_closed_from_evidence (E : EllipticFunctionPackage) (Ev : EllipticFunctionEvidence E) :
    EllipticFunctionClosed E :=
  And.intro Ev.doublyPeriodicClosed (And.intro Ev.ellipticFunctionDefinedClosed (And.intro Ev.weierstrassPFunctionClosed (And.intro Ev.jInvariantClosed Ev.additionTheoremClosed)))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse