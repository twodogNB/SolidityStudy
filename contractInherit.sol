pragma solidity ^0.4.0;

contract base1 {
    function data()public returns(uint256){
        return 1;
    }
}

contract base2 {
    function data()public returns(uint256){
        return 2;
    }
    function getValue() view returns(uint256){

    }
}
//合约的继承，遵循最远继承
//使用关键字is，多个父合约之间用逗号分隔
contract son1 is base2,base1{
    //特性！最远继承，所以返回1
    //如果有合约里面有多个方法，全部继承下来，不受最远继承控制
}

contract son2 is base1,base2{
    //最远继承，所以返回2
}

contract son3 is base1,base2{
    function mydata()public returns(uint256){
        //可以手动控制对于父合约方法的调用
        return base1.data();
    }
}