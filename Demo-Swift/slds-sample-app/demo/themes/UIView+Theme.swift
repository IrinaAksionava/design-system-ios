//
//  UIView+Theme.swift
//  slds-sample-app
//
//  Created by Joe Andolina on 4/13/17.
//  Copyright © 2017 Salesforce.com. All rights reserved.
//

import UIKit

extension UIView {
    
    func updateTheme(){
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateTheme), name: ApplicationModel.themeChanged, object: nil)
    }
    
}
