pragma solidity ^0.4.0;

contract test {
    //定义名为WeekDays的枚举类型
    enum WeekDays{
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }
    //初始化一个WeekDays变量
    WeekDays public day;
    function setDay(WeekDays _num)public {
        day =_num;
    }
    //可以和整型隐式转换，但是需要显示转换。并且不能和其他类型转换
    function getDays()public view returns(uint8){
        return uint8(day);
    }
    function tour()public {
        day = WeekDays.Friday;
    }
    function sing()public{
        day = WeekDays.Saturday;
    }
}
