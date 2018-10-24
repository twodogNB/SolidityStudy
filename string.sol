pragma solidity ^0.4.24;

// - 动态字节数组
// - 引用类型(说明可以使用storage来修饰，进行引用传递，指针的效果)
// - 支持下标索引
// - 支持length、push方法(push会帮助分配空间的)
// - 可以修改
// - 以十六进制格式赋值
//格外注意：对于bytes，如果不使用下标访问，那么可以不用先申请空间，
//直接赋值即可，或者push

contract test1 {
    string public name = "banzhang";
    function setValue()public{
        bytes(name)[0] ="B";
    }
    function getLen()public view returns(uint256){
        return bytes(name).length;
    }

    function setLen()public returns(uint256){
        bytes(name).length = 20;
    }

}