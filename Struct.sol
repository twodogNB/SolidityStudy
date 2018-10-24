pragma solidity ^0.4.0;


pragma solidity ^0.4.5;

contract Test {
    //定义结构之后无分号，与枚举一致
    struct Student {
        string name;
        uint age;
        uint score;
        string sex;
    }

    //两种赋值方式
    Student public stu1 = Student("lily", 18, 90, "girl");
    Student public stu2 = Student({name : "Jim", age : 20, score : 80, sex : "boy"});

    Student[] public Students;

    function assign() public {
        Students.push(stu1);
        Students.push(stu2);

        stu1.name = "Lily";
    }
}
