{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE NoImplicitPrelude   #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell     #-}

module Repro where

import Language.PlutusTx.TH (compile)
import Language.PlutusTx.Code (CompiledCode)
import Language.PlutusTx.Prelude

add :: Integer -> Integer -> Integer
add x y = x + y

addCompiled :: CompiledCode (Integer -> Integer -> Integer)
addCompiled = $$(compile [|| add ||])
