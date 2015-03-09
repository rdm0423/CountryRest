//
//  CRViewController.m
//  CountryRest
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"
#import "CountryController.h"
#import "Country.h"

@interface CRViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation CRViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (IBAction)search:(id)sender {
 
    NSString *name = [self.textField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [[CountryController sharedInstance] getCountriesWithName:name completion:^(NSArray *countries) {
        Country *country = [countries firstObject];
        
        NSString *info = [NSString stringWithFormat:@"name: %@ capital: %@ population: %@", country.name, country.capital, country.population];
        self.textView.text = info;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
