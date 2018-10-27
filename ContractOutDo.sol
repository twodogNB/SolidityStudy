pragma solidity ^0.4.0;

contract C1 {
    uint public num = 10;

    function setValue(uint a) public {
        num = a;
    }
}

//手动赋值
contract C2 {
    C1 c1;//定义一个合约c1的对象，但是此时是空对象，需要实例化;

    function call(address addr) public {
        c1 = C1(addr);
        //使用合约c1的地址进行实例化，c1就可以调用了============
        c1.setValue(100);

        //addr.setValue(1000); 不允许
    }
}

//合约自动调用

contract C3 {
    C1 c1;
    address public c1Address;

    function C3() {
        //注意：在这里C3就是C1的一个合约的外部调用
        address c1Addr = new C1();
        c1 = C1(c1Addr);
        c1Address = c1Addr;
    }
    //或者 直接使用C1来承接亦可
    //c1 = new C1();


    function getValue() public constant returns (uint) {
        return c1.num();
    }

    //注意constant 的坑！！！！，
    //函数加上constant之后，运行修改状态变量，但是修改不会生效，好坑！！！
    function setValue(uint num) public {
        c1.setValue(num);
    }
}