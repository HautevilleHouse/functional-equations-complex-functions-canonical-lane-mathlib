import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Picard

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure PicardTheoremPackage where
  entireFunction : Type u
  codomain : Type v
  topology : TopologicalSpace codomain
  complexStructure : ComplexStructure codomain
  littlePicardTheorem : Prop
  bigPicardTheorem : Prop
  exceptionalValues : Prop
  valueDistribution : Prop

structure PicardTheoremEvidence (P : PicardTheoremPackage) where
  littlePicardTheoremClosed : P.littlePicardTheorem
  bigPicardTheoremClosed : P.bigPicardTheorem
  exceptionalValuesClosed : P.exceptionalValues
  valueDistributionClosed : P.valueDistribution

def PicardTheoremClosed (P : PicardTheoremPackage) : Prop :=
  P.littlePicardTheorem ∧ P.bigPicardTheorem ∧ P.exceptionalValues ∧ P.valueDistribution

theorem picard_theorem_closed_from_evidence (P : PicardTheoremPackage) (E : PicardTheoremEvidence P) :
    PicardTheoremClosed P :=
  And.intro E.littlePicardTheoremClosed (And.intro E.bigPicardTheoremClosed (And.intro E.exceptionalValuesClosed E.valueDistributionClosed))

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse