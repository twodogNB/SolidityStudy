pragma solidity ^0.4.0;

contract Address {
    //“_”符号代表更好的区分状态变量（在函数参数名和状态变量名为一致的时候使用，一般加在函数参数）
    //使用成员balance获取地址余额
    function getBalance(address _addr) public view returns (uint256){
        return addr.balance;
    }
    //地址是160数字，可以用uint160来转换。
    //在从renmix拷贝地址下来的时候需要，记得在0x后前加上00
    address add1 = 0x00ca35b7d915458ef540ade6068dfe2f44e8fa733c;
    uint160 u160 = uint160(add1);

    function Add() public view returns (uint160){
        return u160 + 1;
    }

}
