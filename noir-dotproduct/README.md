# Noir
Build: `nargo check`
Prove: set up inputs in `Prover.toml` and run `nargo prove`. `nargo prove --show-output p` to show println logs.
Verify: `nargo verify p`

## Notes on Noir
Main wows:
- It's really easy to get up and running, this example dotproduct took me 5 minutes to read the docs and 2 minutes to write
- The language reads similarly to the Rhai scripting language, which is excellently designed and easy to write
- Type Generics (wow)
- Closures and functional tooling (wow!)
- Sane testing (!!)
- Very readable docs (!!!)
- Sane package management

Main gripes:
- I can't `nargo new` without a Nargo.toml already present in the directory? definitely a bug
- Downloading a 300mb srs to my home directory, not XDG_CONFIG, not .nargo, but my home directory, feels rude

And those gripes seem like easily fixable bugs. Great language.