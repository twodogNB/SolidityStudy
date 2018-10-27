pragma solidity ^0.4.0;

contract test {
   event myEvent(address addr,uint value ,string info);
    function call(uint _value,string _info)public{
        //TODO
        //定义一个事件是个语句，要加分号
        //调用之后可以在详情里面的logs看到信息
        //主要作用是调用之后可以在log里面展示函数的细节

    myEvent(msg.sender,_value,_info);
    }
}
