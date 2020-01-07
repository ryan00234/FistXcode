//
//  GTListLoader.m
//  First
//
//  Created by 任国良 on 2020/1/4.
//  Copyright © 2020 rengl. All rights reserved.
//

#import "GTListLoader.h"
#import <AFNetworking.h>

@implementation GTListLoader

- (void)loadListData{
    //    [[AFHTTPSessionManager manager] GET:@"https://ajax.googleapis.com/ajax/services/feed/load?q=Feed%E5%9C%B0%E5%9D%80&v=1.0" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    //        NSLog(@"progress");
    //    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    //        NSLog(@"success");
    //
    //    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    //        NSLog(@"faile");
    //    }];
    //
    
    NSString *urlString = @"https://ajax.googleapis.com/ajax/services/feed/load?q=Feed%E5%9C%B0%E5%9D%80&v=1.0";
    NSURL *listURL = [NSURL URLWithString:urlString];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:listURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *jsonError;
        id jsonObj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        NSLog(@"%@", jsonObj);
    }];
    
    [dataTask resume];
}


@end
