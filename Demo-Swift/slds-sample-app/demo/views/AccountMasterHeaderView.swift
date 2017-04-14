// Copyright (c) 2015-present, salesforce.com, inc. All rights reserved
// Licensed under BSD 3-Clause - see LICENSE.txt or git.io/sfdc-license

import UIKit

class AccountMasterHeaderView: AccountHeaderView {
    
    var isLightning = false
    var headerSubText = UILabel()
    var headerDownArrow = UIImageView()
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override func makeLayout() {
        super.makeLayout()
        headerTitle.text = "My Accounts"
        
        self.addSubview(headerDownArrow)
        self.constrainChild(headerDownArrow, xAlignment: .center, yAlignment: .center, xOffset : 0, yOffset : 0)
        
        headerSubText = UILabel()
        headerSubText.text = "5 items, sorted by Account Name"
        
        self.addSubview(headerSubText)
        headerSubText.constrainBelow(self.headerTitle,
                                     xAlignment: .left,
                                     yOffset: 2)
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(self.handleTap))
        self.addGestureRecognizer(tap)
        self.updateTheme()
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    func handleTap(){
        if isLightning {
            isLightning = false
            ApplicationModel.sharedInstance.theme = Theme.sharedInstance.salesforceTheme
        }
        else {
            isLightning = true
            ApplicationModel.sharedInstance.theme = Theme.sharedInstance.lightningTheme
        }
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override func updateTheme() {
        super.updateTheme()
        let theme = ApplicationModel.sharedInstance.theme
        
        if let style = theme["mainHeaderStyle"] {
            headerSubText.textColor = style["color"] as! UIColor
            headerSubText.font = style["font"] as! UIFont
            headerDownArrow.image = style["icon"] as! UIImage
        }
    }
}
