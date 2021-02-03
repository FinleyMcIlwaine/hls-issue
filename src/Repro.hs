{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell     #-}

module Repro where

import Language.PlutusTx.TH
import Language.PlutusTx.Code
import Language.PlutusTx.Prelude
import Language.PlutusTx.Builtins

add :: Integer -> Integer -> Integer
add x y = x `addInteger` y

addCompiled :: CompiledCode (Integer -> Integer -> Integer)
addCompiled = $$(compile [|| add ||])
