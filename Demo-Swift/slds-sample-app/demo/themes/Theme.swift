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
        
        "accountTitleStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextDefault),
            "font" : UIFont.sldsFont(.regular, with: .medium)
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
        
        "actionBarStyle" : [
            "backgroundColor" : UIColor.white,
         ],

        "tabBarStyle" : [
            "underscoreColor" : UIColor.sldsFill(.brand)
        ],
        
        "actionBarButtonStyle" : [
            "color" : UIColor.sldsTextColor(.colorTextActionLabel),
            "font" : UIFont.sldsFont(.regular, with: .xSmall),
            "size" : 28.0 as CGFloat
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
            "color" : UIColor.init(colorLiteralRed: 77/255, green: 31/255, blue: 97/255, alpha: 1.0),
            "font" : UIFont.sldsFont(.regular, with: .small)
        ],
        
        "accountTitleStyle" : [
            "color" : UIColor.init(colorLiteralRed: 150/255, green: 60/255, blue: 189/255, alpha: 1.0),
            "font" : UIFont.sldsFont(.regular, with: .medium)
        ],

        "accountLabelStyle" : [
            "color" : UIColor.init(colorLiteralRed: 77/255, green: 31/255, blue: 97/255, alpha: 1.0),
            "font" : UIFont.sldsFont(.regular, with: .medium)
        ],
        
        "accountValueStyle" : [
            "color" : UIColor.init(colorLiteralRed: 77/255, green: 31/255, blue: 97/255, alpha: 1.0),
            "font" : UIFont.sldsFont(.regular, with: .medium)
        ],
        
        "accountHeaderStyle" : [
            "backgroundColor" : UIColor.init(colorLiteralRed: 246/255, green: 239/255, blue: 249/255, alpha: 1.0),
            "icon" : UIImage.sldsActionIcon(.newAccount,
                                            with: UIColor.white,
                                            andBGColor: UIColor.init(colorLiteralRed: 150/255, green: 60/255, blue: 189/255, alpha: 1.0),
                                            andSize: SLDSSquareIconMedium),
            "color": UIColor.init(colorLiteralRed: 77/255, green: 31/255, blue: 97/255, alpha: 1.0),
            "font" : UIFont.sldsFont(.regular, with: .large)
        ],
        
        "accountDetailHeaderStyle" : [
            "headerFont" : UIFont.sldsFont(.regular, with: .medium),
            "bodyFont" : UIFont.sldsFont(.regular, with: .small),
            "accountColor" : UIColor.init(colorLiteralRed: 77/255, green: 31/255, blue: 97/255, alpha: 1.0),
            "linkColor" : UIColor.init(colorLiteralRed: 150/255, green: 60/255, blue: 189/255, alpha: 1.0)
        ],
        
        "actionBarStyle" : [
            "backgroundColor" : UIColor(patternImage: #imageLiteral(resourceName: "service_bar_background")),
         ],

        "actionBarButtonStyle" : [
            "color" : UIColor.white,
            "font" : UIFont.sldsFont(.regular, with: .xSmall),
            "size" : 38.0 as CGFloat,
            "backgroundColor" : UIColor.clear
        ],

        "tabBarStyle" : [
            "underscoreColor" : UIColor.init(colorLiteralRed: 150/255, green: 60/255, blue: 189/255, alpha: 1.0)
        ],
        
        "accountMasterController" : [
            "navBarTintColor" : UIColor.init(colorLiteralRed: 150/255, green: 60/255, blue: 189/255, alpha: 1.0),
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
