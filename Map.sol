pragma solidity ^0.4.0;
/*键的类型允许除映射外的所有类型，如数组，合约，枚举，结构体，值的类型无限制。
无法判断一个mapping中是否包含某个key，因为它认为每一个都存在，不存在的返回0或false。
映射可以被视作为一个哈希表，在映射表中，==不存储键的数据==，仅仅存储它的keccak256哈希值，用来查找值时使用。
映射类型，仅能用来定义状态变量，或者是在内部函数中作为storage类型的引用。
不支持length
==key不支持string 类型==*/
pragma solidity ^0.4.24;

contract test {
    //id -> name
    mapping(uint => string) public id_names;

    constructor()  public{
        id_names[0x01] = "lily";
        id_names[0x02] = "Jim";
        id_names[0x03] = "Lily";
    }

    function getNameById(uint id)  public view returns (string){
        //加上storage如何赋值？
        string memory name = id_names[id];
        return name;
    }

    function setNameById(uint id)  public returns (string){
        // mapping(uint => string) memory id_name = id_names;
        // var ids = id_names;
        id_names[id] = "Hello";



        // function getMapLength() public returns (uint){
        //     return id_names.length;
        // }

    }
}