//
//  ViewController.h
//  tableView
//
//  Created by Eh on 2015/8/23.
//  Copyright (c) 2015年 Eh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "testTableViewCell.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{

    __weak IBOutlet UITableView *testTableView;
}


@end

