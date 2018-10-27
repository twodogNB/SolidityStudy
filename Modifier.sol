pragma solidity ^0.4.0;

contract Test {
    address owner;
    string public message;
    constructor(){

        owner = msg.sender;

    }
    //modifer的作用是在于对于函数里面的逻辑判断，在函数执行之前会进入modifer的作用，来进行判断。如果满足修饰器的条件即会执行。
    modifier onlyOwner(){
        if (owner != msg.sender) {
            throw;
        }
        //这个下滑线，代表修饰的函数体
        _;
    }
    //可以进行参数传递
    modifier onlyOwner2(){
        if (owner != addr) {
            throw;
        }
        //这个下滑线，代表修饰的函数体
        _;
    }
    //在public前用关键字修饰，可以写多个修饰
    function setMessage(string _message)onlyOwner2 onlyOwner public {

        message = _message;

    }
//总结，把他想象成一个强大的if判断，里面还可以写逻辑。主要用来修饰函数的
    //可以携多个修饰器对函数修饰

}
