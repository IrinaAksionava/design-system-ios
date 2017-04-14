// Copyright (c) 2015-present, salesforce.com, inc. All rights reserved
// Licensed under BSD 3-Clause - see LICENSE.txt or git.io/sfdc-license

import UIKit

class AccountDetailCell: UITableViewCell {
    
    var label = UILabel()
    var value = UILabel()
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    var dataProvider : (label : String, value : String)? {
        
        didSet {
            self.label.text = dataProvider?.label
            self.value.text = dataProvider?.value
        }
    }
    
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.makeLayout()
        self.updateTheme()
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    func makeLayout() {
        self.addSubview(label)
        self.constrainChild(label,
                            xAlignment: .left,
                            yAlignment: .top,
                            xOffset: SLDSSpacingMedium,
                            yOffset: SLDSSpacingMedium)
        
        self.addSubview(value)
        self.value.constrainBelow(label,
                                  xAlignment: .left,
                                  yOffset: 1)
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override func updateTheme() {
        super.updateTheme()
        let theme = ApplicationModel.sharedInstance.theme
        
        if let style = theme["accountLabelStyle"] {
            label.font = style["font"] as! UIFont
            label.textColor = style["color"] as! UIColor
        }
        
        if let style = theme["accountValueStyle"] {
            value.font = style["font"] as! UIFont
            value.textColor = style["color"] as! UIColor
        }
    }
}
