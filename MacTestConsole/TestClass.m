//
//  TestClass.m
//  MacTestConsole
//
//  Created by Sho Okada on 2023/04/14.
//
// メインファイル（拡張子：.m）
// c++と同じ感じでヘッダファイルとメインファイルでセット

#import "TestClass.h"

// TestClassの実装
@implementation TestClass
// アクセサを自動実装
@synthesize a, b;

// -(戻り値の型)メソッド名
// -はインスタンスメソッド
// +にするとクラスメソッド
-(void)Test
{
    NSLog(@"a:%d", a);
    NSLog(@"b:%d", b);
}

@end
