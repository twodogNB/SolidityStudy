pragma solidity ^0.4.0;
//传统方法：采用 throw 和 if ... throw 模式==(已过时)==，例如合约中有一些功能，只能被授权为拥有者的地址才能调用
//Assert里面的条件时我们期待的值，否则直接抛异常退出，与require效果相同，与之不同的是erquire会多一个err参数


