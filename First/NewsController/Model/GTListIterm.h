//
//  GTListIterm.h
//  First
//
//  Created by 任国良 on 2020/1/7.
//  Copyright © 2020 rengl. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//列表结构化数据
@interface GTListIterm : NSObject

@property(nonatomic, strong, readwrite) NSString *category;
@property(nonatomic, strong, readwrite) NSString *picUrl;
@property(nonatomic, strong, readwrite) NSString *uniqueKey;
@property(nonatomic, strong, readwrite) NSString *title;
@property(nonatomic, strong, readwrite) NSString *date;
@property(nonatomic, strong, readwrite) NSString *authorName;
@property(nonatomic, strong, readwrite) NSString *articeUrl;

- (void)configWithDictionary:(NSDictionary *) dictionry;

@end

NS_ASSUME_NONNULL_END
