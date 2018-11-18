//
//  Alert.swift
//  LoginPageSample
//
//  Created by Attila Marosi on 2018. 11. 17..
//  Copyright © 2018. Attila Marosi. All rights reserved.
//

import UIKit

class Alert {
    
    class func showAlert(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
        
    }
    
}
