//
//  OthersFormViewController.m
//  XLForm ( https://github.com/xmartlabs/XLForm )
//
//  Created by Martin Barreto on 31/3/14.
//
//  Copyright (c) 2014 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "OthersFormViewController.h"
#import "XLFormCustomCell.h"

NSString *const kSwitchBool = @"switchBool";
NSString *const kSwitchCheck = @"switchBool";
NSString *const kCustom = @"custom";

@implementation OthersFormViewController


- (id)init
{
    self = [super init];
    if (self){
        [self initializeForm];
    }
    return self;
}



-(void)initializeForm
{
    XLFormDescriptor * form = [XLFormDescriptor formDescriptorWithTitle:@"Other Cells"];
    XLFormSectionDescriptor * section;
    
    // Basic Information
    section = [XLFormSectionDescriptor formSectionWithTitle:@"Other Cells"];
    section.footerTitle = @"OthersFormViewController.h";
    [form addFormSection:section];
    
    // Switch
    [section addFormRow:[XLFormRowDescriptor formRowDescriptorWithTag:kSwitchBool rowType:XLFormRowDescriptorTypeBooleanSwitch title:@"Switch"]];
    
    // check
    [section addFormRow:[XLFormRowDescriptor formRowDescriptorWithTag:kSwitchCheck rowType:XLFormRowDescriptorTypeBooleanCheck title:@"Check"]];

    // custom cell
    XLFormRowDescriptor *customRowDescriptor = [XLFormRowDescriptor formRowDescriptorWithTag:kCustom rowType:@"XLFormRowDescriptorTypeCustom"];
    
    // Must set custom cell or add custom cell to cellClassesForRowDescriptorTypes dictionary before XLFormViewController loaded
    customRowDescriptor.cellClass = [XLFormCustomCell class];

    [section addFormRow:customRowDescriptor];

    self.form = form;
}





@end
