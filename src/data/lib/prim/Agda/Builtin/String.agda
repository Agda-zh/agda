{-# OPTIONS --without-K --safe --no-sized-types --no-guardedness #-}

module Agda.Builtin.String where

open import Agda.Builtin.Bool
open import Agda.Builtin.List
open import Agda.Builtin.Char
open import Agda.Builtin.Equality

postulate String : Set
{-# BUILTIN STRING String #-}

primitive
  primStringToList   : String → List Char
  primStringFromList : List Char → String
  primStringAppend   : String → String → String
  primStringEquality : String → String → Bool
  primShowChar       : Char → String
  primShowString     : String → String
  primStringToListInjective : ∀ a b → primStringToList a ≡ primStringToList b → a ≡ b

{-# COMPILE JS primStringToList = function(x) { return x.split(""); } #-}
{-# COMPILE JS primStringFromList = function(x) { return x.join(""); } #-}
{-# COMPILE JS primStringAppend = function(x) { return function(y) { return x+y; }; } #-}
{-# COMPILE JS primStringEquality = function(x) { return function(y) { return x===y; }; } #-}
{-# COMPILE JS primShowChar = function(x) { return JSON.stringify(x); } #-}
{-# COMPILE JS primShowString = function(x) { return JSON.stringify(x); } #-}
