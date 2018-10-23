pragma solidity ^0.4.0;

//1. 如果一个函数里面，访问了状态变量，但是没有修改，我们使用view或者constant修饰
//
//2. 如果访问了，而且修改了，那么就不能constant和view，否则会报错
//
//3. 如果没有使用过状态变量，我们要修饰为pure
//
//4. 如果你修饰为constant，但是你在函数中修改了，效果是：不会报错，正常执行，但是值不会改变
//5.成员变量不加修饰关键字默认是private
contract test1 {
    int8 public i8 = 100;
    int _i256 = 256;
    //表示不会修改函数内的状态变量
    //为了明确语义，一般要加上constant（view两者完全相同）
    function add() private constant returns (int){
        return i8 + _i256;
    }
    //public 表示所有的人都可以看到的，而且可以调用
    //private表示所有人都可以看到，但是无法调用
    function mins() constant returns (uint256){
        return uint256(_i256 - i8);
        //可以隐式转换
    }

    function isEuql(int a, int b) public pure returns (bool){
        return a == b;
    }

    function setValue(int8 num){
        i8 = num;

    }

    function setValue1(int8 num){
        i8 = num;
    }
}
