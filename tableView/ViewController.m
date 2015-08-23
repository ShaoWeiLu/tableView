//
//  ViewController.m
//  tableView
//
//  Created by Eh on 2015/8/23.
//  Copyright (c) 2015年 Eh. All rights reserved.
//

#import "ViewController.h"
#define testArray @[@"999",@"99",@"99999",@"9999",@"9",@"999",@"99",@"99999",@"9999",@"9",@"999",@"99",@"99999",@"9999",@"9",@"999",@"99",@"99999",@"9999",@"9",@"999",@"99",@"99999",@"9999",@"9"]
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    testTableView.dataSource = self;
    testTableView.delegate = self;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [testArray count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    testTableViewCell *cell = (testTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"testTableViewCell"];
    if(cell==nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"testTableViewCell" bundle:nil] forCellReuseIdentifier:@"testTableViewCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"testTableViewCell"];
        
//        cell = [[testTableViewCell alloc] initWithStyle®:UITableViewCellStyleDefault reuseIdentifier:@"testTableViewCell"];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    cell.testLabel.text = [testArray objectAtIndex:indexPath.row];
    
    CGSize size = [cell.testLabel.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:cell.testLabel.font,NSFontAttributeName, nil]];

    
    cell.deleteView.frame = CGRectMake(84, 49, size.width, 1);
    cell.deleteView.backgroundColor = [UIColor redColor];
        NSLog(@"1_%f",cell.deleteView.frame.size.width);
    NSLog(@"%f",size.width);
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
