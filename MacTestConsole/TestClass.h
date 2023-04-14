//
//  TestClass.h
//  MacTestConsole
//
//  Created by Sho Okada on 2023/04/14.
//
// ヘッダファイル（拡張子：.h）

// お決まり
#import <Foundation/Foundation.h>

// NS_ASSUME_NONNULL_BEGIN 〜 NS_ASSUME_NONNULL_ENDの間は明示していないポインタをnonnullとして扱うことができる
NS_ASSUME_NONNULL_BEGIN

// 宣言
@interface TestClass : NSObject
{
    @private
    int a;
    int b;
}

// これを書くとアクセサを自動実装
@property int a, b;
// メソッドの宣言
-(void)Test;

@end

NS_ASSUME_NONNULL_END
