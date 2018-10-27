pragma solidity ^0.4.0;
//访问函数
//在合约中，那些被修饰为public的状态变量，会自动的生成一个同名的访问函数
//访问函数，即系统自动生成，所以我们看不见

contract C {
    uint  public num = 10;

    function setNumber(){
        num = 100;
    }
}

contract D {
    C c1 = new C();
    function getNumber()public view returns (uint){
    return c1.num();
}

}
