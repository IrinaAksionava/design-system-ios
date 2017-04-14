// Copyright (c) 2015-present, salesforce.com, inc. All rights reserved
// Licensed under BSD 3-Clause - see LICENSE.txt or git.io/sfdc-license

import UIKit

class AccountHeaderView: UIView {
    
    var headerIcon = UIImageView()
    var headerTitle = UILabel()
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override func draw(_ rect: CGRect) {
        let aPath = UIBezierPath()
        
        aPath.move(to: CGPoint(x:0, y:self.frame.height))
        aPath.addLine(to: CGPoint(x:self.frame.width, y:self.frame.height))
        aPath.close()
        aPath.lineWidth = 1.0
        UIColor.sldsBorderColor(.colorBorderSeparatorAlt2).set()
        aPath.stroke()
    }
    
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        self.makeLayout()
        self.updateTheme()
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    convenience init () {
        self.init(frame:CGRect.zero)
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    func makeLayout() {
        
        self.addSubview(headerIcon)
        self.constrainChild(headerIcon,
                            xAlignment: .left,
                            yAlignment: .top,
                            xOffset: 10,
                            yOffset: 10)
        
        self.addSubview(headerTitle)
        headerTitle.constrainRightOf(headerIcon,
                                     yAlignment: .top,
                                     xOffset: 15)
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    override func updateTheme(){
        super.updateTheme()
        let theme = ApplicationModel.sharedInstance.theme
        
        if let style = theme["accountHeaderStyle"] {
            self.backgroundColor = style["backgroundColor"] as! UIColor
            headerIcon.image = style["icon"] as! UIImage
            headerTitle.textColor = style["color"] as! UIColor
            headerTitle.font = style["font"] as! UIFont
        }
    }
}
