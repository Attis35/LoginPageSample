//
//  CustomUITextField.swift
//  LoginPageSample
//
//  Created by Attila Marosi on 2018. 11. 18..
//  Copyright © 2018. Attila Marosi. All rights reserved.
//

import UIKit

enum TextFieldType: String {
    case email
    case password
}

class CustomUITextField: UITextField {
    
    var textFieldType: TextFieldType?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
    }

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = COLOR_TEXTFIELD
        self.layer.cornerRadius = 30
        self.textColor = .white
        self.textAlignment = .center
        self.font = BASIC_FONT
        self.clearsOnBeginEditing = true
        
        
        
    }
    
    
}

