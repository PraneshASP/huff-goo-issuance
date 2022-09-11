// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract LibGOOTest is Test {
    /// @dev System under test.
    LibGOO public sut;

    /// @dev Setup the testing environment.
    function setUp() public {
        sut = LibGOO(HuffDeployer.deploy("LibGOOWrapper"));
    }
}

interface LibGOO {
    function computeGOOBalance(uint256) external;
}
