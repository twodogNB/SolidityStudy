pragma solidity ^0.4.0;

contract Test {

    struct Student {
        string name;
        uint age;
        uint score;
        string sex;
    }

    //两种赋值方式
    Student public stu1 = Student("lily", 18, 90, "girl");
    Student public stu2 = Student({name:"Jim", age:20, score:80, sex:"boy"});

    Student[] public Students;

    function assign() public {
        Students.push(stu1);
        Students.push(stu2);

        stu1.name = "Lily";
    }

    //1. 返回一个Student结构
    function getLily() public view returns(string, uint, uint, string) {
        Student memory lily = Students[0];
        return (lily.name, lily.age, lily.score, lily.sex);
    }
}
