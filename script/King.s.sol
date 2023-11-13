pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../challs/King.sol";

contract KingScript is Script {
    function run() external {
        vm.startBroadcast();
        
        // address(0x38759252c619c3F29cbf368f56C1E2811A55DB67).call{value: 10000}("");
        address(0x38759252c619c3F29cbf368f56C1E2811A55DB67).call{value: 0}(abi.encodeWithSignature("exp()"));
        // (bool s,) = address(0x50322F39C381d80C0c958061275195F1a90F6e2B).call(abi.encodeWithSignature("exp()"));
        // if(s) {
        //     console.log("Success!");
        // }
        // address(0xc870c5aB82C35F2cbD24ceb2df0cfc57Af047577).call{value: 0}(abi.encodeWithSignature("exp()"));
    }
}