//
//  ViewController.m
//  DES
//
//  Created by bejoy on 15/3/9.
//  Copyright (c) 2015年 zeng. All rights reserved.
//

#import "ViewController.h"
#import "XRSA.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSDate *date = [NSDate date];
    NSDate *date2 = [NSDate date];
    
    double d = [date timeIntervalSinceDate:date2];
    
    NSLog( @"%f", d);
    
    
    
    NSString *keyPath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
    XRSA *rsa = [[XRSA alloc] initWithPublicKey:keyPath];
    
    if (rsa != nil) {
        NSLog(@"%@", [rsa encryptToString:@"plaintext"]);
    } else {
        NSLog(@"Error");
    }
    NSDate *date1 = [NSDate date];
    
    d = [date timeIntervalSinceDate:date1];
    
    NSLog( @"%f", d);
    
    NSLog( @"----------------------------------------------------------------");

//    2015-03-11 10:12:21.778 DES[1344:321761] -0.000027
//    2015-03-11 10:12:21.790 DES[1344:321761] JKZsk/RYTSi+JCMjyx+9xiBxm3BxP9VOenH+baCw5yCb9GKHEl64/52N+DccCrWkzquLSKX6soOtpt9yAUnYwTgU2wt5W/OWHVxEj25YKOX1VthrIkZh5JghALhyuYZCTFHne7ugIIzT1HDirKrXy2emGK+B2nCOLRpOXSNeE3k=
//    2015-03-11 10:12:21.791 DES[1344:321761] -0.012791

    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
