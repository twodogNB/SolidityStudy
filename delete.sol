pragma solidity ^0.4.21;


contract deleteTest {
    string public str1 = "hello";

    //delete操作符可以用于任何变量(mapping除外)，将其设置成默认值
    function delStr() public{
        delete str1;
    }

    function setStr() public {
        str1 = "HELLO";
    }

    //静态数组，动态数组
    uint[10] public staticArray = [4,2,4,5,6,7,8];
    uint[] public dynamicArray = new uint[](10);

    function intDynamicArray () public {
        for (uint i = 0; i< 10; i++) {
            //dynamicArray[i] = i;
            dynamicArray.push(i);
        }
    }

    //如果对静态数组使用delete，则重置所有索引的值
    function delStaticArray() public {
        delete staticArray;
    }

    //如果对动态数组使用delete，则删除所有元素，其长度变为0
    function delDynamicArray() public {
        delete dynamicArray;
    }

    function getArrayLength() view public returns (uint, uint){
        return (staticArray.length, dynamicArray.length);
    }


    mapping(uint => bool) public map1;

    function initMap() public {
        map1[1] = true;
        map1[2] = true;
        map1[3] = false;

        //delete map1;
    }

    function deleMapByKey(uint key) public {
        delete map1[key];
    }
    //delete map1;

    struct Person {
        string name;
        mapping(string => uint) nameScore;
    }

    Person public p1;

    function initP1() public {
        p1.name = "duke";
        p1.nameScore["duke"] = 80;
    }

    function returnP1() view public returns (string, uint) {
        return (p1.name, p1.nameScore["duke"]);
    }

    function deleteP1() public {
        delete p1;
    }
}