//  Fraction类的分类MathOps的接口
//  FractionMathOps.h
//  prog5
//
//  Created by BIGO on 2022/7/5.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end

NS_ASSUME_NONNULL_END
