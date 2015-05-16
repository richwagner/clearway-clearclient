//
//  DigitalSignViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/16/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "DigitalSignViewController.h"
#import "AppController.h"

@interface DigitalSignViewController ()
@property (strong, nonatomic) NSData *signature;
@end

@implementation DigitalSignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stepLabel.font = [UIFont fontWithName:@"Archer-Bold" size:20.0];
    self.instructionsLabel.font = [UIFont fontWithName:@"Archer-Bold" size:16.0];
    
    
    [AppController styleDefaultButton:self.signButton];
    [AppController styleDefaultButton:self.clearButton];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(beganSignature:) name:kBeganSignature object:self.view];
    [self signatureClearTapped:nil];
    
    
    
}

- (void)viewDidUnload {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kBeganSignature object:self.view];
    [self setView:nil];
    [super viewDidUnload];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(beganSignature:) name:kBeganSignature object:self.view];
    [self signatureClearTapped:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signatureClearTapped:(id)sender
{
    [self.signatureView erase];
    
}

- (IBAction)signatureSignTapped:(id)sender {
    [self checkSign];
}

-(void)checkSign {
    if ((self.signature = UIImagePNGRepresentation([self.signatureView getSignatureImage]))) {
        [self didSign:self.signature];
        AppController *app = [AppController sharedManager];
        app.step1Complete = YES;
        [self.navigationController popViewControllerAnimated:YES];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Signature" message:@"Please sign" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

- (void)beganSignature:(NSNotification *)notification {
    if ([notification object] == self.signatureView) {
    }
}

#pragma mark SignatureViewController delegate methods
- (void)didSign:(NSData *)signatureData; {
    NSLog(@"signatureData: %@",signatureData.description);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
