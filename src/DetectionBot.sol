pragma solidity ^0.8.0;

contract DetectionBot {
    error Failed(address user, address origSender);
    function handleTransaction(address user, bytes calldata msgData) external {
        (address to, uint256 value, address origSender ) = abi.decode(msgData[4:], (address, uint256, address));
        (bool suc, bytes memory data) = origSender.call(abi.encodeWithSignature("underlying()"));
        address underlying = abi.decode(data, (address));
        if (underlying != to) {
            (bool suc, ) = address(msg.sender).call(abi.encodeWithSignature("raiseAlert(address)", address(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707)));
            if (!suc) {
                revert Failed(user, origSender);
            }
        }
    }
}