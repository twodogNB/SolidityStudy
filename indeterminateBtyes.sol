pragma solidity ^0.4.24;

pragma solidity ^0.4.0;
/*定义格式为T [ ]，例如：string[ ] names, byte[ ] citys。
内容可以修改
可以改变长度(仅限storage类型) 支持length、push方法*/
contract test {
    //创建方式1：字面量形式
    uint[] public nums = [uint(1), 2, 3,4]; //remix里面参数是指定下标显示数组

    function h() public {
        nums.push(5);
    }
    //创建方式二：关键字
    // a storage类型数组，状态变量，最初为空，下标访问时越界
    uint[] public b;
    //复杂类型在局部是引用
    function g()public{
        //旁边括号是初始化数组长度为7，但是里面没有值
        b = new uint[](7);
        //可以修改数组长度
        b.length = 10;
        b[9] = 100;
        b.push(101);
    }
    //b memory类型数组
    function f()public pure returns(uint[]){
        uint[] memory a = new uint[](7);

        //不能修改长度
        //Error: Expression has to be an lvalue.
        //a.length = 100;
        //a.push(10);

        for(uint i = 0;i<a.length;i++){
            a[i]= i;
        }
        return a ;

    }

}

