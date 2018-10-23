pragma solidity ^0.4.0;

contract test {
    //长度可以读取length
    bytes1 public a1 = "a";
    //长度不可以修改
    //可以通过下标访问
    bytes2 public a2 = "aa";
    bytes10 public a3 = "helloworld";
    //内容不可以修改
    function getLen() public view returns (uint128){
        return a1.length;
    }

    function getByIndex(uint i) public view returns (byte){
        return a3[i];
    }
}
