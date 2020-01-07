//
//  GTListIterm.m
//  First
//
//  Created by 任国良 on 2020/1/7.
//  Copyright © 2020 rengl. All rights reserved.
//

#import "GTListIterm.h"

@implementation GTListIterm

- (void)configWithDictionary:(NSDictionary *) dictionry{
    
#warning 类型是否匹配
    self.category = [dictionry objectForKey:@"category"];
    self.picUrl = [dictionry objectForKey:@"picUrl"];;
    self.uniqueKey = [dictionry objectForKey:@"uniqueKey"];
    self.title = [dictionry objectForKey:@"title"];
    self.date = [dictionry objectForKey:@"date"];
    self.authorName = [dictionry objectForKey:@"authorName"];
    self.articeUrl = [dictionry objectForKey:@"articeUrl"];
}

@end
