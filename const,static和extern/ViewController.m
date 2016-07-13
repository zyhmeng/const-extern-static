//
//  ViewController.m
//  const,static和extern
//
//  Created by zyh on 16/7/12.
//  Copyright © 2016年 zyh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

/*
    const作用:
    1.仅仅是用来修饰右边的变量(只能修饰变量：基本变量，指针变量，对象变量)
    2.const修饰的变量，表示只读
 
    const 书写规范：一定要放在变量的左边
 
    用const修饰指针变量
    
    int * const p = &a; //p:只读变量 *p 变量
    const int *p = &a; // *p:只读变量 p 变量
    int const *p = &a; // *p:只读变量 p 变量
    int const * const p = &a; // *p只读  p只读
    const int * const p =&a; // *p只读  p只读
 
    用const修饰对象变量
 
    NSString * const str = @"123";
 
    const 开发中使用场景
    1.定义一个全局只读变量  NSString * const str = @"123";
    2.在方法中定义只读参数
 - (void)test:(NSString * const)name
 {
    name 是不能改的 为只读变量
 }
 */

/* 
    static作用：
    1.修饰局部变量
        *延长这个局部变量的生命周期，只要程序运行，局部变量就会一直存在
        *局部变量只会分配一次内存，为什么？用static修饰的代码，只会在程序一启动的时候就会执行，以后就不会再执行
    2.修饰全局变量
        *只会修改全局变量的作用域，表示只能在当前文件内使用
 
    extern作用：
    1.声明一个全局变量，不能定义变量
    注意：extern修饰的变量不能初始化
 
    使用场景，一般用于声明全局变量
 UIKIT_EXTERN NSString *const UITableViewSelectionDidChangeNotification;
 
 
    static和const的联合使用
    static和const修饰全局变量
    static修饰全局变量，修改作用域，表示在当前文件中使用
    const修饰变量，变量只读
    静态全局只读变量
 */

//当前字符串只能在本文件使用，并且只读，不能修改
static NSString * const name = @"123";

//定义静态全局变量，只能在当前文件内使用
static int i = 2;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //定义int变量,方式一和方式二是一样的
    //方式一：
    int const a = 10;// a:只读变量
    
    //方式二：
    const int b = 20;// b:只读变量
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //static：修饰的变量，程序一运行就会分配一次内存
    static int i = 0;
    i++;
    NSLog(@"%d",i);
}
@end
