pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/SamaritanSolver.sol";
contract lol is Script {
    function run () external {

        vm.startBroadcast();
        SamaritanSolver s = SamaritanSolver(0xF6a7E2Cc63e3c3B8D2f7ecDc11054104b1FB66D2);
        s.exp();
        // s.notify(10);    
        // address(0x18c6e36bdB49596d05d75772614a1190578d96f9).call(abi.encodeWithSignature("requestDonation()"));
        }
}