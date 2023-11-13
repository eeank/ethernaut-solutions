pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/GatekeeperTwoSolver.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract GatekeeperTwoScript is Script {
    function run() external {
        vm.startBroadcast();
        new GatekeeperTwoSolver();
    }
}