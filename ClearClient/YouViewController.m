//
//  YouViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "YouViewController.h"
#import "AppController.h"

#define LAST_PAGE_INDEX 5

CGFloat const PAGE_WIDTH = 1024.0;
CGFloat const PAGE_HEIGHT = 555.0;

NSString *const NAV_TEXT_COLOR = @"#ffffff";
NSString *const SELECTED_NAV_TEXT_COLOR = @"D3F3EC";

@interface YouViewController ()

@end

@implementation YouViewController


//===========================================================
//  Event handlers
//===========================================================

#pragma mark - Event handlers 

- (IBAction)continueTouchHandler:(id)sender {

    self.currentPageIndex++;

    if (self.currentPageIndex <= LAST_PAGE_INDEX) {
        [self gotoPage:self.currentPageIndex];
    }
    else {
        [self.navigationController popViewControllerAnimated:YES];
    }

}

- (IBAction)backTouchHandler:(id)sender {
    
    self.currentPageIndex--;
    
    if (self.currentPageIndex >=0) {
        [self gotoPage:self.currentPageIndex];
    }
    else {
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}

- (void)tapNav:(UITapGestureRecognizer *)sender {
    NSInteger pageIndex = [(UIGestureRecognizer *)sender view].tag;
    [self gotoPage:pageIndex];
}


//===========================================================
//  Page methods
//===========================================================

#pragma mark - Page methods

- (void)gotoPage:(NSInteger)pageIndex {
    if (pageIndex <= LAST_PAGE_INDEX) {
        [self.scrollView setContentOffset:CGPointMake([self offsetForPage:pageIndex], 0) animated:YES];
        [self updateUIToPage:pageIndex];
    }
}

- (void)positionView:(UIView *)view atPageIndex:(NSInteger)pageIndex {
    view.frame = CGRectMake(pageIndex*PAGE_WIDTH, 0, PAGE_WIDTH, PAGE_HEIGHT);
}

//Returns the actual page index based on scrolling position
- (NSInteger)getActualPageIndex {
    if (!self.scrollView) {
        return -1;
    }
    NSInteger index = (NSInteger)floor((self.scrollView.contentOffset.x * 2.0f + PAGE_WIDTH) / (PAGE_WIDTH * 2.0f));
    return index;
}

// Returns the scroll view offset for the given page
- (CGFloat)offsetForPage:(NSInteger)pageIndex {
    CGFloat offsetX = PAGE_WIDTH * pageIndex;  // Zero-based
    return offsetX;
}

- (void)updateUIToPage:(NSInteger)pageIndex {

    //NSLog(@"Update page=%d", pageIndex);

    [self inactiveCircle:self.step1ImageView];
    [self inactiveLabel:self.step1NavLabel];
    [self inactiveLabel:self.step1NumberLabel];

    [self inactiveCircle:self.step2ImageView];
    [self inactiveLabel:self.step2NavLabel];
    [self inactiveLabel:self.step2NumberLabel];

    [self inactiveCircle:self.step3ImageView];
    [self inactiveLabel:self.step3NavLabel];
    [self inactiveLabel:self.step3NumberLabel];

    [self inactiveCircle:self.step4ImageView];
    [self inactiveLabel:self.step4NavLabel];
    [self inactiveLabel:self.step4NumberLabel];

    [self inactiveCircle:self.step5ImageView];
    [self inactiveLabel:self.step5NavLabel];
    [self inactiveLabel:self.step5NumberLabel];

    [self inactiveCircle:self.step6ImageView];
    [self inactiveLabel:self.step6NavLabel];
    [self inactiveLabel:self.step6NumberLabel];

    if (pageIndex == 0) {
        [self activeCircle:self.step1ImageView];
        [self activeLabel:self.step1NavLabel];
        [self activeNumberLabel:self.step1NumberLabel];
    }
    else if (pageIndex == 1) {
        [self activeCircle:self.step2ImageView];
        [self activeLabel:self.step2NavLabel];
        [self activeNumberLabel:self.step2NumberLabel];
    }
    else if (pageIndex == 2) {
        [self activeCircle:self.step3ImageView];
        [self activeLabel:self.step3NavLabel];
        [self activeNumberLabel:self.step3NumberLabel];
    }
    else if (pageIndex == 3) {
        [self activeCircle:self.step4ImageView];
        [self activeLabel:self.step4NavLabel];
        [self activeNumberLabel:self.step4NumberLabel];
    }
    else if (pageIndex == 4) {
        [self activeCircle:self.step5ImageView];
        [self activeLabel:self.step5NavLabel];
        [self activeNumberLabel:self.step5NumberLabel];
    }
    else if (pageIndex == 5) {
        [self activeCircle:self.step6ImageView];
        [self activeLabel:self.step6NavLabel];
        [self activeNumberLabel:self.step6NumberLabel];
    }
    
    if (pageIndex == LAST_PAGE_INDEX) {
        [self.continueButton setTitle:@"RETURN TO MENU" forState:UIControlStateNormal];
        AppController *app = [AppController sharedManager];
        app.step3Complete = YES;    }
    else {
        [self.continueButton setTitle:@"CONTINUE" forState:UIControlStateNormal];
    }
    
    if (pageIndex == 0) {
        [self.backButton setTitle:@"RETURN TO MENU" forState:UIControlStateNormal];
    }
    else {
        [self.backButton setTitle:@"BACK" forState:UIControlStateNormal];
    }
    
}

- (void)inactiveNumberLabel:(UILabel*)label {
    label.textColor = [UIColor colorWithRed:0.827 green:0.953 blue:0.925 alpha:1.000];
}

- (void)activeNumberLabel:(UILabel*)label {
    label.textColor = [UIColor colorWithRed:0.435 green:0.725 blue:0.675 alpha:1.000];
}

- (void)activeLabel:(UILabel*)label {
    label.textColor = [UIColor whiteColor];
}

- (void)inactiveLabel:(UILabel*)label {
    label.textColor = [UIColor colorWithRed:0.827 green:0.953 blue:0.925 alpha:1.000];
}

- (void)inactiveCircle:(UIImageView*)imageView {
    imageView.hidden = YES;
    //imageView.alpha = 0.5f;
}

- (void)activeCircle:(UIImageView*)imageView {
    imageView.hidden = NO;
    //imageView.alpha = 1.0f;
}

//===========================================================
//  Scrollview delegates
//===========================================================

#pragma mark - Scrollview delegates

// Only called when user swipes, not when progamatically controlling
// scrollview
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    NSInteger index = [self getActualPageIndex];
    self.currentPageIndex = index;
    //NSLog(@"SECTION=%d", index);
    [self updateUIToPage:index];
}

//===========================================================
//  View level methods
//===========================================================

#pragma mark - View level methods

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.contentSize = CGSizeMake(6*PAGE_WIDTH, PAGE_HEIGHT);
    [self positionView:self.step1View atPageIndex:0];
    [self positionView:self.step2View atPageIndex:1];
    [self positionView:self.step3View atPageIndex:2];
    [self positionView:self.step4View atPageIndex:3];
    [self positionView:self.step5View atPageIndex:4];
    [self positionView:self.step6View atPageIndex:5];
    
    self.currentPageIndex = 0;
    [self updateUIToPage:0];
    
    [AppController styleDefaultButton:self.continueButton];
    [AppController styleDefaultButton:self.backButton];
    //UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self.step1NavLabel action:@selector(tapNav:)];

    [self styleLabels];

    [AppController styleAllControls:self.step1View];
    [AppController styleAllControls:self.step2View];
    [AppController styleAllControls:self.step3View];
    [AppController styleAllControls:self.step4View];
    [AppController styleAllControls:self.step5View];
    [AppController styleAllControls:self.step6View];

    [AppController styleTaggedLabels:self.step3View withFontname:@"Archer-Medium" withTag:2];
    
}

- (void)styleLabels {
    
    NSString *fontName = @"Novecentowide-Medium";
    
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel *)v;
            
            CGFloat fs = 0;
            if (v.tag > 0) {
                fs = label.font.pointSize;
            }
            else {
                fs = 12.0;
            }
            
            label.font = [UIFont fontWithName:fontName size:fs];
        }
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
