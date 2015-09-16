//
//  ViewController.m
//  Dragon Fashion
//
//  Created by Edil Ashimov on 7/21/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "ViewController.h"
#import "ClothingDetailContoller.h"
#import "Dragon.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;
@end

@implementation ViewController

- (void)viewDidLoad {
    Dragon *smaug = [[Dragon alloc]initWithFullName:@"Smaug" andClothingItem:@"ill-gotten gold"];
    Dragon *puff = [[Dragon alloc]initWithFullName:@"puff" andClothingItem:@"ill"];
    Dragon *spyro = [[Dragon alloc]initWithFullName:@"Smaug" andClothingItem:@"ill-gotten gold"];
    Dragon *trogdor = [[Dragon alloc]initWithFullName:@"Smaug" andClothingItem:@"ill-gotten gold"];
    Dragon *ferrari = [[Dragon alloc]initWithFullName:@"Smaug" andClothingItem:@"ill-gotten gold"];

    self.dragons = [NSArray arrayWithObjects:puff, trogdor, spyro, smaug, ferrari, nil];
    for (Dragon *dragon in self. dragons) {
        NSLog(@"%@", dragon.description);
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cellId"];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.fullName;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dragons.count;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    ClothingDetailContoller *dvc = segue.destinationViewController;
    dvc.dragon = dragon;
}

@end
