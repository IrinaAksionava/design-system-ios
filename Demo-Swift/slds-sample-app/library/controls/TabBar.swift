// Copyright (c) 2015-present, salesforce.com, inc. All rights reserved
// Licensed under BSD 3-Clause - see LICENSE.txt or git.io/sfdc-license

import UIKit

class TabBar: ItemBar {
    
    var underscoreColor : UIColor = UIColor.sldsFill(.brand)
    var underscore = UIView()
    
    override var selectedIndex: Int {
        didSet {
            self.moveUnderscore(self.selectedIndex)
        }
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override var itemWidth : CGFloat {
        return self.frame.width / CGFloat(self.items.count)
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override func draw(_ rect: CGRect) {
        let aPath = UIBezierPath()
    
        aPath.move(to: CGPoint(x:0, y:self.frame.height))
        aPath.addLine(to: CGPoint(x:self.frame.width, y:self.frame.height))
        aPath.close()
        aPath.lineWidth = 2.0
        self.underscoreColor.set()
        aPath.stroke()
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override func loadView() {
        super.loadView()
        self.accessibilityTraits = UIAccessibilityTraitTabBar
        self.addSubview(self.underscore)
        
        self.constrainChild(self.underscore,
                            xAlignment: .left,
                            yAlignment: .bottom,
                            height: 3)
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

    override func layoutSubviews() {
        super.layoutSubviews()
        
        if self.underscore.widthConstraint.constant != self.itemWidth {
            self.underscore.widthConstraint.constant = self.itemWidth
            self.moveUnderscore(self.selectedIndex, animated: false)
        }
        
        self.updateTheme()
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    func addTab(withLabelString labelString :String) {
        let tab = UIButton()
        tab.setTitle(labelString.uppercased(), for: .normal)
        tab.titleLabel?.font = UIFont.sldsFont(.regular, with: .small)
        tab.setTitleColor(UIColor.sldsTextColor(.colorTextDefault), for: .normal)
        super.addItem(item: tab)
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    func moveUnderscore(_ index : Int, animated:Bool = true) {
        for c in self.constraints {
            if c.firstItem as! NSObject == underscore,
                c.firstAttribute == .left {
                    c.constant = CGFloat(index) * self.itemWidth
            }
        }
        
        if animated {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.layoutIfNeeded()
            })
        }
        else
        {
            self.layoutIfNeeded()
        }
    }
    
    //––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
    
    override func updateTheme() {
        super.updateTheme()
        
        let theme = ApplicationModel.sharedInstance.theme
        
        if let style = theme["tabBarStyle"] {
            self.underscoreColor = style["underscoreColor"] as! UIColor
            self.underscore.backgroundColor = self.underscoreColor
        }
        
        self.setNeedsDisplay()
    }
}
