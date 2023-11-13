pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../challs/Force.sol";
import "../src/ForceSolver.sol";

contract ForceScript is Script{

    function run() external {
        vm.startBroadcast();
        ForceSolver f = ForceSolver(payable(0x80B5eCF9D06803adC7f6D66C3afFF3814929B3c1));
        // address(f).call{value: 10}("");
        f.exp();
    }
}