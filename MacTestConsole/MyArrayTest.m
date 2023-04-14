//
//  MyArrayTest.m
//  MacTestConsole
//
//  Created by Sho Okada on 2023/04/14.
//

#import "MyArrayTest.h"

@implementation MyArrayTest

static NSMutableArray *_myArray;

+ (NSMutableArray *)myArray {
    if (!_myArray) {
        _myArray = [NSMutableArray new];
    }
    return _myArray;
}

+ (void)setMyArray:(NSMutableArray *)array {
    _myArray = array;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [[[self class] myArray] addObject:self];
    }
    return self;
}

@end
