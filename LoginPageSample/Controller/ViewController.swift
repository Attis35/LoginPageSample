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
    let emailTextField = CustomUITextField()
    let passwordTextField = CustomUITextField()
    let btn = UIButton()
    let imageContainer = UIImageView(image: UIImage(named: "mainImage"))
    
    // Image properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Gradient background
        self.applyGradientFilter(topColor: COLOR_GRADIENTBG_TOP, bottomColor: COLOR_GRADIENTBG_BOTTOM)
        
        // Setup Views
        setupImageView()
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
        
        // Hide Keyboard
        self.hideKeyboardWhenTappedAround()
        
        
        
        
    }

    func setupImageView() {
        self.view.addSubview(imageContainer)
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        imageContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        imageContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageContainer.widthAnchor.constraint(equalToConstant: 180).isActive = true
        imageContainer.heightAnchor.constraint(equalToConstant: 180).isActive = true
        imageContainer.backgroundColor = .white
        imageContainer.layer.cornerRadius = 90
        imageContainer.layer.borderWidth = 4
        imageContainer.layer.borderColor = UIColor.white.cgColor
        imageContainer.layer.masksToBounds = true
        
    }

    func setupEmailTextField() {
        self.view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        emailTextField.topAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: 20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        emailTextField.text = TEXTFIELD_EMAIL_TEXT
        emailTextField.keyboardType = .emailAddress
        
    }
    
    func setupPasswordTextField() {
        self.view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        passwordTextField.text = TEXTFIELD_PASSWORD_TEXT
        passwordTextField.isSecureTextEntry = true
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
    
    
    func animateIn() {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
            self.imageContainer.widthAnchor.constraint(equalToConstant: 90).isActive = true
            self.imageContainer.heightAnchor.constraint(equalToConstant: 90).isActive = true
            self.imageContainer.layer.cornerRadius = 45
        })
    }
    
    
    @objc func loginButtonTapped(_ sender: UIButton) {
        
    }

    
    
}

