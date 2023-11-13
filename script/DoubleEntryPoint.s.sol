pragma solidity ^0.8.0;

import "forge-std/Script.sol";
contract DoubleEntryPointScript is Script {
    //making a detection bot for forta. ./src/DetectionBot.sol
    function run() external {
        vm.startBroadcast();
        address vault = 0xcCefb6390a3F6848C5d05d1A539c99bdb482c18C;
        address dep = 0xFD8B0445C40d54C6d155e747a3A8A982Cf23C6f8;
        address legacy = 0x2B3457C62b38d6529980907a81019E53ABb8d914;

        //forta address
        address(0xb66f6c6Aac27612ED42d0D969efC33Fc58D99979).call(abi.encodeWithSignature("setDetectionBot(address)", address(0x3341b5D31695470186606E937BF32f654dFa38DC)));
    }
}