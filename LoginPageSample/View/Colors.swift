//
//  Colors.swift
//  LoginPageSample
//
//  Created by Attila Marosi on 2018. 11. 16..
//  Copyright © 2018. Attila Marosi. All rights reserved.
//

import UIKit

let COLOR_GRADIENTBG_TOP = UIColor(red: 191/255, green: 96/255, blue: 114/255, alpha: 1)
let COLOR_GRADIENTBG_BOTTOM = UIColor(red: 127/255, green: 64/255, blue: 76/255, alpha: 1)
let TEXT_COLOR = COLOR_GRADIENTBG_BOTTOM
let COLOR_TEXTFIELD = UIColor(red: 124/255, green: 64/255, blue: 76/255, alpha: 1)


extension UIViewController {
    
    func applyGradientFilter(topColor: UIColor, bottomColor: UIColor) {
        let gradLayer = CAGradientLayer()
        gradLayer.frame = self.view.frame
        gradLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.addSublayer(gradLayer)
    }
    
}
