pragma solidity ^0.8.0;

import "forge-std/Script.sol";

contract ShopScript is Script {
    function run() external {
        vm.startBroadcast();
        address(0x88472457764cfe3E7dB9586d8563678F6682b62F).call{value: 0, gas:1000000}(abi.encodeWithSignature("exp()"));
    }
}