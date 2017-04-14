//
//  Themes.swift
//  slds-sample-app
//
//  Created by Joe Andolina on 4/13/17.
//  Copyright © 2017 Salesforce.com. All rights reserved.
//

import UIKit

class Theme: NSObject {
    static let sharedInstance = Theme()
    
    let salesforceTheme = [
        "mainHeaderStyle" : [
            "icon" : UIImage.sldsUtilityIcon(.chevrondown, withSize: SLDSSquareIconUtilitySmall),
            "color" : UIColor.sldsTextColor(.colorTextDefault),
            "font" : UIFont.sldsFont(.regular, with: .small)
        ],
        
        "accountLabelStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextActionLabel),
            "font" : UIFont.sldsFont(.regular, with: .medium)
        ],
        
        "accountValueStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextDefault),
            "font" : UIFont.sldsFont(.regular, with: .medium)
        ],
        
        "accountHeaderStyle" : [
            "backgroundColor" : UIColor.sldsBackgroundColor(.colorBackground),
            "icon" : UIImage.sldsStandardIcon(.account,  withSize: SLDSSquareIconMedium),
            "color" :UIColor.sldsTextColor(.colorTextDefault),
            "font" : UIFont.sldsFont(.regular, with: .large)
        ],
        
        "accountDetailHeaderStyle" : [
            "headerFont" : UIFont.sldsFont(.regular, with: .medium),
            "bodyFont" : UIFont.sldsFont(.regular, with: .small),
            "accountColor" : UIColor.sldsTextColor(.colorTextDefault),
            "linkColor" : UIColor.sldsTextColor(.colorTextLink)
        ],
        
        "actionBarButtonStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextActionLabel),
            "font" : UIFont.sldsFont(.regular, with: .xSmall)
        ],
    
        "accountMasterController" : [
            "navBarTintColor" : UIColor.sldsBackgroundColor(.colorBrand),
            "navTintColor" : UIColor.white,
            
            "backIndicatorIcon" : UIImage.sldsUtilityIcon(.chevronleft,
                                                          withSize: SLDSSquareIconUtilityMedium).withAlignmentRectInsets(UIEdgeInsetsMake(0, 0, -1, 0)),
            
            "backIndicatorMaskIcon" : UIImage.sldsUtilityIcon(.chevronleft,
                                                              withSize: SLDSSquareIconUtilityMedium).withAlignmentRectInsets(UIEdgeInsetsMake(0, 0, -1, 0)),
            
            "titleAttributes" : [NSForegroundColorAttributeName: UIColor.white,
                                 NSFontAttributeName: UIFont.sldsFont(.regular, with: .medium)]
        ]
    ]
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

    let lightningTheme = [
        "mainHeaderStyle" : [
            "icon" : UIImage.sldsUtilityIcon(.chevrondown, withSize: SLDSSquareIconUtilitySmall),
            "color" : UIColor.sldsTextColor(.colorTextDefault),
            "font" : UIFont.sldsFont(.regular, with: .small)
        ],
        
        "accountLabelStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextActionLabel),
            "font" : UIFont.sldsFont(.regular, with: .medium)
        ],
        
        "accountValueStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextDefault),
            "font" : UIFont.sldsFont(.regular, with: .medium)
        ],
        
        "accountHeaderStyle" : [
            "backgroundColor" : UIColor.sldsBackgroundColor(.colorBackground),
            "icon" : UIImage.sldsStandardIcon(.account,  withSize: SLDSSquareIconMedium),
            "color" :UIColor.sldsTextColor(.colorTextDefault),
            "font" : UIFont.sldsFont(.regular, with: .large)
        ],
        
        "accountDetailHeaderStyle" : [
            "headerFont" : UIFont.sldsFont(.regular, with: .medium),
            "bodyFont" : UIFont.sldsFont(.regular, with: .small),
            "accountColor" : UIColor.sldsTextColor(.colorTextDefault),
            "linkColor" : UIColor.sldsTextColor(.colorTextLink)
        ],
        
        "actionBarButtonStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextActionLabel),
            "font" : UIFont.sldsFont(.regular, with: .xSmall)
        ],
        
        "accountMasterController" : [
            "navBarTintColor" : UIColor.purple,//sldsBackgroundColor(.colorBrand),
            "navTintColor" : UIColor.white,
            
            "backIndicatorIcon" : UIImage.sldsUtilityIcon(.chevronleft,
                                                          withSize: SLDSSquareIconUtilityMedium).withAlignmentRectInsets(UIEdgeInsetsMake(0, 0, -1, 0)),
            
            "backIndicatorMaskIcon" : UIImage.sldsUtilityIcon(.chevronleft,
                                                              withSize: SLDSSquareIconUtilityMedium).withAlignmentRectInsets(UIEdgeInsetsMake(0, 0, -1, 0)),
            
            "titleAttributes" : [NSForegroundColorAttributeName: UIColor.white,
                                 NSFontAttributeName: UIFont.sldsFont(.regular, with: .medium)]
        ]
    ]
}
