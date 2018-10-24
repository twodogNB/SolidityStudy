pragma solidity ^0.4.0;

contract test {
    string public name = "banzhang";
    uint public num = 10;

    function call1() public {
        setValue(name);
    }
    //一个函数参数（引用类型的），默认是memory，意思是值传递，完全独立的副本
    function setValue(string memory _name) private {
        bytes(_name)[0] = "B";
        num = 1000;
    }
    function call2() public {
        setValue(name);
    }
    //storage修饰的函数不允许使用public，必须是private或者是internal
    //storage修饰参数后，参数变量为引用传递
    function setValue2(string storage _name) private {
        bytes(_name)[0] = "B";
        num = 1000;
    }
    function localTest()public {
        //局部变量（仅限数据结构或者是数组，string）默认是storage类型，可以声名为memory类型
        //例如，下面的string作为局部变量时，默认时storage，但是也可以指定为memory
        //值改变，会改变状态变量
        string storage Tmp = name ;
        bytes(Tmp)[0] = "B";
    }
    function localTest()public {
            //值传递，不会改变状态变量
        string memory Tmp = name ;
        bytes(Tmp)[0] = "B";
    }
}
