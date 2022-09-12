<img align="right" width="150" height="150" top="100" src="./assets/icon.png">

# huff-goo-issuance • [![tests](https://github.com/PraneshASP/huff-goo-issuance/actions/workflows/ci.yaml/badge.svg)](https://github.com/PraneshASP/huff-goo-issuance/actions/workflows/ci.yaml) [![license](https://img.shields.io/badge/Unlicense-blue.svg?label=license)](https://github.com/PraneshASP/huff-goo-issuance/blob/main/LICENSE)

Huff implmentation of GOO (Gradual Ownership Optimization) Issuance. Read the [whitepaper here](https://www.paradigm.xyz/2022/09/goo).

> Note: This codebase is experimental and is not ready to be used in production, it is meant as a learning resource.

Generated with: Versatile Huff Project Template using Foundry.

## Getting Started

### Requirements

The following will need to be installed in order to use this template. Please follow the links and instructions.

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you've done it right if you can run `git --version`
- [Foundry / Foundryup](https://github.com/gakonst/foundry)
  - This will install `forge`, `cast`, and `anvil`
  - You can test you've installed them right by running `forge --version` and get an output like: `forge 0.2.0 (f016135 2022-07-04T00:15:02.930499Z)`
  - To get the latest of each, just run `foundryup`
- [Huff Compiler](https://docs.huff.sh/get-started/installing/)
  - You'll know you've done it right if you can run `huffc --version` and get an output like: `huffc 0.2.0`

### Quickstart

1. Clone this repo or run:

```
git clone https://github.com/PraneshASP/huff-goo-issuance
cd huff-goo-issuance
```

2. Install dependencies:

Once you've cloned and entered into your repository, you need to install the necessary dependencies. In order to do so, simply run:

```shell
forge install
```

3. Build & Test:

To build and test your contracts, you can run:

```shell
forge build
forge test
```

For more information on how to use Foundry, check out the [Foundry Github Repository](https://github.com/foundry-rs/foundry/tree/master/forge) and the [foundry-huff library repository](https://github.com/huff-language/foundry-huff).

## Blueprint

```ml
lib
├─ forge-std — https://github.com/foundry-rs/forge-std
├─ foundry-huff — https://github.com/huff-language/foundry-huff
src
├─ utils
|   └─ WadMath.huff - Wad Math lib
|
├─ wrappers
|   └─ LibGOOWrapper.huff - A testing wrapper for LibGOO.huff
|
└─ LibGOO.huff - A GOO library implementation

```

## License

[The Unlicense](https://github.com/huff-language/huff-project-template/blob/master/LICENSE)

## Acknowledgements

- [Original implementation in Solidity by t11s 👑](https://github.com/transmissions11/goo-issuance)
- [huff-template](https://github.com/huff-language/huff-project-template)

## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._
