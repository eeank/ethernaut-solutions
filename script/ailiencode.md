oob in smart contracts lmfao.
this chall shows how fked up evm was back then.
make the array size -1 then we can revise kec256(bytes32(1)) + 1 index which would be 0x0 which is
where the owner address is stored.

```
ian@ubox:~/$ cast storage --rpc-url $RPC_URL 0x310CC3f940e64059Af0A5cC4276E68beF7915bB5 0
0x0000000000000000000000010bc04aa6aac163a6b3667636d798fa053d43bd11
ian@ubox:~/$ cast storage --rpc-url $RPC_URL 0x310CC3f940e64059Af0A5cC4276E68beF7915bB5 0
0x000000000000000000000001dcc36b9cbc0dbadbccfb2f5dd70e5adb5024f707
```