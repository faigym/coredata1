//
//  TableViewController.h
//  Gelt8
//
//  Created by Faigy Mayer on 6/15/15.
//  Copyright (c) 2015 Appton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>




@interface TableViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@property (nonatomic) NSFetchedResultsController *fetchedResultsController;

@property Class ViewController;

+ (NSArray *)locationWithInfo:(NSDictionary *)locationDictionary
        inManagedObjectContext:(NSManagedObjectContext *)context;

+ (void)loadLocationsFromArray:(NSArray *)locations // of Flickr NSDictionary
      intoManagedObjectContext:(NSManagedObjectContext *)context;
@end
