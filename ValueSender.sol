pragma solidity ^0.4.0;
//任何函数，只要修饰为payable，那么就可以在调用这个方法的时候，对value字段赋值，然后将value转给合约，若没有指定payable，但是对value字段赋值了，调用了会报错
//以太坊真正的转账（只是转账）是不依赖合约的，直接用web3的库就可以进行转账，不需要合约
contract Test {
    address owner;
    string public message;
    constructor(){
        //获取转账人的地址
        owner = msg.sender;
        //msg.sender 调用方法的地址.谁调用就是谁
    }
    //设置状态变量的值（仅管理员可以设置）
    //获取值，所有都可以
    function setMessage(string _message)public {
        if(owner==msg.sender){
            message =_message;
        }
    }

    function()payable{//发起方将钱转给合约

    }
    //注意  这里的过程是发起方先转给合约，合约再将钱转给addr。虽然合约的钱没有变
    //但实际上又经历了一次发起方转给合约，合约转给addr的过程
    function giveMoney(address addr)public payable{
        if (owner == msg.sender){
            //msg.value 当前这个调用里附带的转账值，wei
            addr.transfer(msg.value);//Value对应Account转进的金额数，即表示可以控制转多少钱给addr
        }
    }
}
