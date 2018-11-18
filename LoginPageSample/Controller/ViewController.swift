//
//  ViewController.swift
//  LoginPageSample
//
//  Created by Attila Marosi on 2018. 11. 15..
//  Copyright © 2018. Attila Marosi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets programmatically
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let btn = UIButton()
    
    enum LoginError: Error {
        case incompleteForm
        case invalidEmail
        case invalidPasswordLength
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Gradient background
        self.applyGradientFilter(topColor: COLOR_GRADIENTBG_TOP, bottomColor: COLOR_GRADIENTBG_BOTTOM)
        
        // Setup Views
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
        
        // Hide Keyboard
        self.hideKeyboardWhenTappedAround()
        
        
    }
 
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    
    
    }

    func setupEmailTextField() {
        self.view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        emailTextField.backgroundColor = COLOR_TEXTFIELD
        emailTextField.layer.cornerRadius = 30
        emailTextField.text = TEXTFIELD_EMAIL_TEXT
        emailTextField.textColor = .white
        emailTextField.textAlignment = .center
        emailTextField.font = BASIC_FONT
        emailTextField.clearsOnBeginEditing = true
    }
    
    func setupPasswordTextField() {
        self.view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        passwordTextField.backgroundColor = COLOR_TEXTFIELD
        passwordTextField.layer.cornerRadius = 30
        passwordTextField.text = TEXTFIELD_PASSWORD_TEXT
        passwordTextField.textColor = .white
        passwordTextField.textAlignment = .center
        passwordTextField.font = BASIC_FONT
        passwordTextField.isSecureTextEntry = true
        passwordTextField.clearsOnBeginEditing = true
    }


    func setupLoginButton() {
        self.view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.widthAnchor.constraint(equalToConstant: 140).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30).isActive = true
        btn.setTitle(LOGIN_BTN_TEXT_HU.uppercased(), for: .normal)
        btn.backgroundColor = .white
        btn.setTitleColor(TEXT_COLOR, for: .normal)
        btn.titleLabel?.font = BASIC_FONT
        btn.layer.cornerRadius = 25
        btn.addTarget(self, action: #selector(loginButtonTapped(_:)), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped(_ sender: UIButton) {
        // TODO: Validation required
        
        guard let email = emailTextField.text, let password = passwordTextField.text else {
            return
        }
        
        print(email)
        print(password)
        
    }

    
    
}

