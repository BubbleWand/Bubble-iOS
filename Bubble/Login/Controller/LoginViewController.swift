//
//  LoginViewController.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/4/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.numberOfLines = 0
//        title.font = K.headingFont
        title.text = "Bubble"
        title.textColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        title.textAlignment = .center
        return title
    }()
    
    let logoImageView: UIImageView = {
        let logoImageView = UIImageView(image: UIImage(named: "placeholder")!)
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        return logoImageView
    }()
    
    let usernameTextField: UITextField = {
        let usernameTextField = UITextField()
        let bottomLine = UIView()
        
        usernameTextField.attributedPlaceholder = NSAttributedString(string: "Username",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
//        passwordTextField.font = K.normalFont
        usernameTextField.textColor = .white
        usernameTextField.borderStyle = .none
        
        bottomLine.translatesAutoresizingMaskIntoConstraints = false
        bottomLine.backgroundColor = .white
        usernameTextField.addSubview(bottomLine)
        bottomLine.topAnchor.constraint(equalTo:usernameTextField.bottomAnchor, constant: -8).isActive = true
        bottomLine.leadingAnchor.constraint(equalTo: usernameTextField.leadingAnchor).isActive = true
        bottomLine.trailingAnchor.constraint(equalTo: usernameTextField.trailingAnchor).isActive = true
        bottomLine.heightAnchor.constraint(equalToConstant: 1.0).isActive = true
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        return usernameTextField
    }()
    
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        let bottomLine = UIView()
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordTextField.isSecureTextEntry = true
//        passwordTextField.font = K.normalFont
        passwordTextField.textColor = .white
        passwordTextField.borderStyle = .none
        
        bottomLine.translatesAutoresizingMaskIntoConstraints = false
        bottomLine.backgroundColor = .white
        passwordTextField.addSubview(bottomLine)
        bottomLine.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: -8).isActive = true
        bottomLine.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor).isActive = true
        bottomLine.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor).isActive = true
        bottomLine.heightAnchor.constraint(equalToConstant: 1.0).isActive = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        passwordTextField.font = K.normalFont
        button.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        passwordTextField.font = K.normalFont
        button.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    func setViews(){
        
        view.addSubview(stackView)
        stackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.7).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.73).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        self.view.backgroundColor = UIColor(red:0.49, green:0.84, blue:0.87, alpha:1.0)
        
        stackView.addArrangedSubview(titleLabel)
        titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        stackView.addArrangedSubview(logoImageView)
        logoImageView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        stackView.addArrangedSubview(usernameTextField)
        usernameTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        usernameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        stackView.addArrangedSubview(passwordTextField)
        passwordTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        stackView.addArrangedSubview(loginButton)
        loginButton.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        stackView.addArrangedSubview(signUpButton)
        signUpButton.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped(){
        print("login tapped")
        let tabBarVC: TabBarController = TabBarController()
        self.navigationController?.pushViewController(tabBarVC, animated: true)
//        let nextVC: HomeViewController = HomeViewController()
//        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc func signUpButtonTapped(){
        print("sign up tapped")
    }
    
}
