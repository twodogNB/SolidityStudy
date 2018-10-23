pragma solidity ^0.4.0;

contract  test{
   uint public num ;
    //构造函数未指定payable关键字，那么创建合约不允许转账
    constructor() public {

    }
    //任何函数如果指定了Payable，那么这个合约就可以接受转账，也可以转0
    function getMoney()public payable{

    }
    //用匿名函数来给合约转账比较方便
    //而且匿名函数在以太坊里面所消耗的gas非常小，很便宜
    //一般用于给合约转账
    function() payable{

    }
    function getBalance()public view returns(uint){
        return address(this).balance;
    }

}
