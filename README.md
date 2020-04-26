
## Swift demo工程

* 项目目录必须与真实目录一致
* pods包含常用的第三方库
* 每个模块包含数据处理层、视图处理层、控制器层，MVC的优化为了业务解耦
![](design.png)
多工程联编  
1. 主工程可以调用子工程，反之不行
2. 子工程可以调用别的子工程，但不能互相调用
3. 所有工程都依赖NPBaseKit工程
4. 工程之间调用，可以使用swift和OC类（公开头文件）
5. 工程之间调用，不可以使用OC的分类，可以使用swift的扩展

## Unit Test
**说明：**

* 单元测试用来进行正确性检验的测试工作
* 尽量避免耦合，将工程和代码分解成多个小部件，从而更易于测试
* 使用的是iOS原生测试框架XCTest  
* 这里使用的是多工程，子工程的方法需要使用模拟器测试。  
[XCTest](https://developer.apple.com/documentation/xctest)官方文档学习