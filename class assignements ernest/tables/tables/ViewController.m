//
//  ViewController.m
//  tables
//
//  Created by ilabadmin on 7/14/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "ViewController.h"
#import "model/Language.h"
#import "DetailsViewController.h"
@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *lang;
    //NSArray *my;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //initialize table data
    
//    languages = [NSArray arrayWithObjects: @"ios", @"java", @"android", @"networks", @"python",nil];
    
    //tmy = [NSArray arrayWithObjects:@"ios", @"java", @"android", @"networks", @"python",nil];
    
    //initialize table data
    
    Language *lan1 = [Language new];
    lan1.name = @"des";
    lan1.description = @"this is it";
    lan1.image = @"go.jpg";
    
    Language *lan2 = [ Language  new];
    lan2.name = @"pythopn";
    lan2.description = @"nice language";
    lan2.image = @"python.jpg";
    
    
     Language  *lan3 = [ Language  new];
      lan3.name =@"java";
    lan3.description =@"good one too";
    lan3.image =@"java";
    
    
     Language  *lan4 = [ Language  new];
    lan4.name =@"php";
    lan4.description=@"well, its the thing";
    lan4.image =@"php.jpg";
    
    lang = [NSArray arrayWithObjects:lan1,lan2,lan3,lan4, nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [lang count];
}
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellidentifier = @"TableItem";
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellidentifier];
    }
    Language *lan = ((Language *)lang[indexPath.row]);
    
    cell.textLabel.text = lan.name;
    [cell.detailTextLabel setText:lan.description];
    
    
                       
    //cell.imageView.image = [UIImage imageNamed:@"creme_brulee.jpg"];
    cell.imageView.image = [UIImage imageNamed:lan.image];
    return cell;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    NSInteger index = [self.myTableView indexPathForSelectedRow].row;
    
    if ([segue.identifier isEqualToString:@"sageidentifier"]){
        [(DetailsViewController *)segue.destinationViewController setLanguages:[self objectInListIndex:index]];
         
    
    }
}
-(Language *)objectInListIndex: (NSUInteger) index {
    return [lang objectAtIndex:index];
}
@end
