pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../challs/Vault.sol";

contract VaultSolver is Script{

    function run() external {
        vm.startBroadcast();
        Vault v = Vault(0x7b91b6748853d2135e5E4B4CF01568285D313C3f);

        v.unlock("A very strong secret password :)");

    }
} 