import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

structure DerivationAdmittedObject where
  ring : Type u
  derivation : Type v
  derivationClosed : Prop
  conclusion : derivationClosed

def DerivationWitnessClosed (O : DerivationAdmittedObject) : Prop :=
  O.derivationClosed

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "https://github.com/HautevilleHouse/derivations-commutative-rings-canonical-lane"
    theoremName := "DerivationsCommutativeRingsCanonicalLaneLean"
    theoremObject := "Admissible closure for derivations of commutative rings"
    classicalBoundary := "unrestricted classical boundary: derivation closure remains open outside the admissible class"
    carriedRemainder := "full derivation closure beyond the admissible class is carried as an open formalization boundary"
  }

theorem theorem_statement_defined : sourceTheoremStatement.sourceKey ≠ "" :=
by
  intro h
  have : sourceTheoremStatement.sourceKey = "" := h
  -- but sourceTheoremStatement.sourceKey is defined as a non-empty string literal
  have : "https://github.com/HautevilleHouse/derivations-commutative-rings-canonical-lane" ≠ "" := by decide
  exact this (by simpa [sourceTheoremStatement] using h)

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse