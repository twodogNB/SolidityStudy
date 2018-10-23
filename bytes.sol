pragma solidity ^0.4.0;

contract test {
//动态字节数组
    //引用类型（说明可以用storage来修饰，进行引用传递，指针的效果）
    //支持下标索引
    //支持length push方法（push会帮助分配空间）
    //可以修改
    //以十六进制格式赋值
    //注意的坑：
    //旧版本的remix可以直接在remix中使用"helloworld"形式给bytes赋值，新版本不允许，必须使用0x格式
    bytes public name1 = new byte(1);
    bytes public name2;
    function getName1Length()public view returns(uint256){
        return name1.length;
    }
    function setName1Length(uint len)public{
        name1.length = len ;
    }
    function setName2Length(uint len)public{
        name2.length = len ;
    }
    function setName2Index(uint i)public view returns(byte){
        return name2[i];
    }
    function pushValueToName2(byte src )public {
        name2.push(src);
    }

}
