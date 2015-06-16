//
//  TableViewController.m
//  Gelt8
//
//  Created by Faigy Mayer on 6/15/15.
//  Copyright (c) 2015 Appton. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import "Location.h"


@interface TableViewController ()

@end

@implementation TableViewController


//- (void)viewDidLoad {
//    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//}


+ (NSArray *)locationWithInfo:(NSDictionary *)locationDictionary
        inManagedObjectContext:(NSManagedObjectContext *)context {
    Location *location = nil;
    id object = [[ViewController alloc] init];
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Location"];
//    request.predicate = [NSPredicate predicateWithFormat:@"unique = %@", unique];
    
//    NSError *error;
//    
//    if (!matches || error || ([matches count] > 1)) {
//        // handle error
//    } else if ([matches count]) {
//        photo = [matches firstObject];
//    } else {
        location = [NSEntityDescription insertNewObjectForEntityForName:@"Location"
                                              inManagedObjectContext:context];
        location.name = [object name2];
        location.address = [object address2];
        location.category = [object cat];
    
//        photo.title = [photoDictionary valueForKeyPath:FLICKR_PHOTO_TITLE];
//        photo.subtitle = [photoDictionary valueForKeyPath:FLICKR_PHOTO_DESCRIPTION];
    return location;
}

+ (void)loadLocationsFromArray:(NSArray *)locations // of Flickr NSDictionary
         intoManagedObjectContext:(NSManagedObjectContext *)context
{
    for (NSDictionary *location in locations) {
        [self locationWithInfo:location inManagedObjectContext:context];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Location Cell"];
    
    Location *location = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = location.name;
    cell.detailTextLabel.text = location.address;
    
    return cell;
}

//- (void)prepareViewController:(id)vc
//                     forSegue:(NSString *)segueIdentifer
//                fromIndexPath:(NSIndexPath *)indexPath
//{
//    Photo *photo = [self.fetchedResultsController objectAtIndexPath:indexPath];
//    
//    if ([vc isKindOfClass:[ImageViewController class]]) {
//        ImageViewController *ivc = (ImageViewController *)vc;
//        ivc.imageURL = [NSURL URLWithString:photo.imageURL];
//        ivc.title = photo.title;
//    }
//}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    NSIndexPath *indexPath = nil;
//    if ([sender isKindOfClass:[UITableViewCell class]]) {
//        indexPath = [self.tableView indexPathForCell:sender];
//    }
//    [self prepareViewController:segue.destinationViewController
//                       forSegue:segue.identifier
//                  fromIndexPath:indexPath];
//}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    id detailvc = [self.splitViewController.viewControllers lastObject];
//    if ([detailvc isKindOfClass:[UINavigationController class]]) {
//        detailvc = [((UINavigationController *)detailvc).viewControllers firstObject];
//        [self prepareViewController:detailvc
//                           forSegue:nil
//                      fromIndexPath:indexPath];
//    }
//}



@end
