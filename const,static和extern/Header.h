//
//  Header.h
//  const,static和extern
//
//  Created by zyh on 16/7/12.
//  Copyright © 2016年 zyh. All rights reserved.
//

#ifndef Header_h
#define Header_h

//苹果经常把常用的字符串定义成const


/*
    宏常见用法：
    1.常用的字符串抽成宏
    2.常用的代码抽成宏
 */

/*
    const:常量
    const:当有字符串常量的时候，苹果推荐我们使用const
    const与宏的区别
    1.编译时刻：宏：预编译（#是预编译）const：编译时刻（command+B）
    2.编译检查：宏：不会检查错误  const：会检查错误
    3.宏的好处：可以定义代码
    4.宏的坏处:编译时间过长，因此常用的字符串通常使用const修饰，const只会编译分配内存一次
 
 */

#endif /* Header_h */
