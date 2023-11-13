//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/CoinFlipSolver.sol";

contract CoinFlipS is Script {
    function run() external {
        vm.startBroadcast();
        CoinFlipSolver ct = CoinFlipSolver(0x1dF46229486fc2c36a2C0A1e8b2B7C2708762765);
        ct.flipSolve();
        console.log("wins : ");
        console.log(ct.getWins());

        vm.stopBroadcast();
    }
}
