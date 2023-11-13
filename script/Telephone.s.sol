// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../challs/Telephone.sol";
import "../src/TelephoneSolver.sol";

contract TelephoneScript is Script{
    function run() external {
      vm.startBroadcast();
      TelephoneSolver ex = TelephoneSolver(0x1F86ac41E814ffC020Eae3aEcf64997c061F218E);

      ex.exp();
    }
}