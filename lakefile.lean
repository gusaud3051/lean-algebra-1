import Lake
open Lake DSL

package "leanthm" where
  version := v!"0.1.0"
  keywords := #["math"]
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩ -- pretty-prints `fun a ↦ b`
  ]

require "leanprover-community" / "mathlib"

@[default_target]
lean_lib «Leanthm» where
  -- add any library configuration options here
