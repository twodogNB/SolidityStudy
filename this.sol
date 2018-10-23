pragma solidity ^0.4.0;

contract test{  //注意  合约名不能和关键字重名，小坑
    //constructor 表示系统内置的构造函数，调用一次
    //payable 表示可以转账
    constructor()public payable{

    }
    function getContractBalance()public view returns(uint256){
        //this代表的是合约的地址
        //1eth=10^18wei
        //1btc=10^8sat
        return address (this).balance;
    }
    //transfer指定转账地址，由合约来转账
    function transferTo(address receiver)public{
        //receiver代表着转出地址
        //给谁转，谁就调用transfer
        //如果转账失败，报异常

        receiver.transfer(address(this).balance);
        //transfer（）表示转账多少金额，单位是wei
    }

}
