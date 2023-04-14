//
//  main.m
//  MacTestConsole
//
//  Created by Sho Okada on 2023/04/14.
//

// お決まり
#import <Foundation/Foundation.h>
// TestClassをインポート
#import "TestClass.h"
// MyArrayTestをインポート
#import "MyArrayTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Hello World
        NSLog(@"Hello, World!");
        
        // とりあえず書いてみたfor文
        for(int i = 0; i < 10; i++)
        {
            NSLog(@"%d", i);
        }
        
        // 空のリストを生成する
        NSMutableArray *mar = [NSMutableArray array];
        for(int i = 0; i < 3; i++)
        {
            // TestClassのインスタンスを詰め込んでみる
            TestClass *test = [[TestClass alloc] init];
            [mar addObject:test];
        }
        // インスタンス作成 allocはメモリ確保 initは初期化
        TestClass *test = [[TestClass alloc] init];
        
        // アクセサ呼び出し
        // [インスタンス メソッド:(引数)]
        // int numに対してsetNumが自動実装
        [test setA:(1)];
        [test setB:(2)];
        
        // メソッド呼び出し
        [test Test];
        
        // クラス変数にNSMutableArrayを作成してインスタンスが作成されるたびに自分自身を追加する
        MyArrayTest *test1 = [[MyArrayTest alloc] init];
        MyArrayTest *test2 = [[MyArrayTest alloc] init];
        MyArrayTest *test3 = [[MyArrayTest alloc] init];
        NSMutableArray *result = MyArrayTest.myArray;

    }
    return 0;
}
