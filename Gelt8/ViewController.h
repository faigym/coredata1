//
//  ViewController.h
//  Gelt8
//
//  Created by Faigy Mayer on 6/14/15.
//  Copyright (c) 2015 Appton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Location.h"


@interface ViewController : UIViewController

@property (strong, nonatomic) CLLocationManager *locationManager;

@property (strong, nonatomic) NSString *name2;
@property (strong, nonatomic) NSString *address2;
@property (strong, nonatomic) NSString *cat;

@property (nonatomic) Location *currentLocation;

@end

