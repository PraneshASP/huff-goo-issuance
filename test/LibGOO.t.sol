// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";

contract LibGOOTest is Test {
    /// @dev System under test.
    LibGOO public sut;

    /// @dev Setup the testing environment.
    function setUp() public {
        sut = LibGOO(HuffDeployer.deploy("LibGOO"));
    }

    function testDeployment() public {
        assert(address(sut) != address(0));
    }

    function testGOOBalanceMultiple() public {
        assertEq(sut.computeGOOBalance(1, 1e18, 1e18), 2.25e18);
        assertEq(sut.computeGOOBalance(2, 1e18, 1e18), 2.914213562373095048e18);
        assertEq(sut.computeGOOBalance(3, 1e18, 1e18), 3.482050807568877293e18);
        assertEq(
            sut.computeGOOBalance(10, 1e18, 1e18),
            6.662277660168379331e18
        );
        assertEq(sut.computeGOOBalance(100, 1e18, 1e18), 36e18);
    }

    function testGOOBalanceInitialBalance() public {
        assertEq(
            sut.computeGOOBalance(1, 10e18, 1e18),
            13.412277660168379331e18
        );
        assertEq(
            sut.computeGOOBalance(2, 10e18, 1e18),
            14.972135954999579392e18
        );
        assertEq(
            sut.computeGOOBalance(3, 10e18, 1e18),
            16.227225575051661134e18
        );

        assertEq(
            sut.computeGOOBalance(10, 10e18, 1e18),
            22.500000000000000000e18
        );

        assertEq(
            sut.computeGOOBalance(100, 10e18, 1e18),
            66.622776601683793319e18
        );
    }

    function testGOOBalanceTimeElapsed() public {
        assertEq(sut.computeGOOBalance(1, 1e18, 10e18), 36e18);
        assertEq(
            sut.computeGOOBalance(2, 1e18, 10e18),
            65.142135623730950480e18
        );
        assertEq(
            sut.computeGOOBalance(3, 1e18, 10e18),
            93.320508075688772930e18
        );

        assertEq(
            sut.computeGOOBalance(10, 1e18, 10e18),
            282.622776601683793310e18
        );
        assertEq(sut.computeGOOBalance(100, 1e18, 10e18), 2601e18);
    }

    function testGOOBalanceTimeElapsed2() public {
        assertEq(sut.computeGOOBalance(1, 1e18, 1e18), 2.25e18);
        assertEq(sut.computeGOOBalance(1, 1e18, 2e18), 4e18);
        assertEq(sut.computeGOOBalance(1, 1e18, 3e18), 6.25e18);

        assertEq(sut.computeGOOBalance(1, 1e18, 10e18), 36e18);

        assertEq(sut.computeGOOBalance(1, 1e18, 100e18), 2601e18);
    }
}

interface LibGOO {
    function computeGOOBalance(
        uint256,
        uint256,
        uint256
    ) external view returns (uint256);
}
