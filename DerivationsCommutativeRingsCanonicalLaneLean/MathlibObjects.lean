import DerivationsCommutativeRingsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Derivation.Basic

namespace HautevilleHouse
namespace DerivationsCommutativeRingsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DerivationSpace where
  carrier : Type
  ring : CommRing carrier

structure DerivationAdmittedObject where
  space : DerivationSpace
  derivationExists : Prop
  kernelComputed : Prop
  moduleStructure : Prop
  conclusion : derivationExists ∧ kernelComputed ∧ moduleStructure

structure DerivationEndgameState where
  object : DerivationAdmittedObject

def DerivationWitnessClosed (O : DerivationAdmittedObject) : Prop :=
  O.derivationExists ∧ O.kernelComputed ∧ O.moduleStructure

end DerivationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse