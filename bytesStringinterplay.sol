pragma solidity ^0.4.24;

contract test {
    bytes10 public b10 = 0x68656c6c6f776f726c64;     //helloworld

    //bytes bb10 = byte10 会报错 无法转换
    bytes public bb10 = new bytes(b10.length);
    //固定字节数组转动态字节数组
    function fexsBytesToBytes() public {
        for (uint i = 0; i < b10.length; i++) {
            bb10[i] = b10[i];
        }
    }
    //string转动态数组
    string Say = "helloworld";
    bytes public b1;

    function StringToBytes() public {
        b1 = bytes(Say);
    }
    //动态数组转string
    string public str3;
    function BytesToString() public  {
        fexsBytesToBytes();
        str3 = string(bb10);
    }


}
