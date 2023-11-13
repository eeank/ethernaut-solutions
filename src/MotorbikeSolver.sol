pragma solidity ^0.8.0;

contract MotorbikeSolver {
    fallback() external payable {
        selfdestruct(payable(address(0x0)));
    }
}