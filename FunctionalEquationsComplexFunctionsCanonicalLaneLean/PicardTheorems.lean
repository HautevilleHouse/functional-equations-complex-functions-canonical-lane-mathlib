import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsComplexFunctionsCanonicalLaneLean

structure PicardTheoremsPackage where
  entireFunction : Type u
  complexPlane : Type v
  littlePicardTheorem : Prop
  greatPicardTheorem : Prop
  omittedValues : Prop

structure PicardTheoremsEvidence (P : PicardTheoremsPackage) where
  littlePicardTheoremClosed : P.littlePicardTheorem
  greatPicardTheoremClosed : P.greatPicardTheorem
  omittedValuesClosed : P.omittedValues

def PicardTheoremsClosed (P : PicardTheoremsPackage) : Prop :=
  P.littlePicardTheorem ∧ P.greatPicardTheorem ∧ P.omittedValues

theorem picard_theorems_closed_from_evidence (P : PicardTheoremsPackage)
    (E : PicardTheoremsEvidence P) : PicardTheoremsClosed P := by
  exact And.intro E.littlePicardTheoremClosed
    (And.intro E.greatPicardTheoremClosed E.omittedValuesClosed)

end FunctionalEquationsComplexFunctionsCanonicalLaneLean
end HautevilleHouse
