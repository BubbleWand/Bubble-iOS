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
    
    let logoImageView: UIImageView = {
        let logoImageView = UIImageView(image: UIImage(named: "bubble-logo")!)
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        return logoImageView
    }()
    
    let taglineLabel: UILabel = {
        let title = UILabel()
        title.numberOfLines = 0
//        title.font = K.headingFont
        title.text = "Have fun\nwith your friends.\nWe'll take care of the rest"
        title.textColor = .black
        title.textAlignment = .left
        return title
    }()

    
    let createAccountButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        passwordTextField.font = K.normalFont
        button.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
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

        self.view.backgroundColor = .white
        
        
        stackView.addArrangedSubview(logoImageView)
        logoImageView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        stackView.addArrangedSubview(taglineLabel)
        taglineLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        taglineLabel.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        stackView.addArrangedSubview(createAccountButton)
        createAccountButton.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        createAccountButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        createAccountButton.addTarget(self, action: #selector(createAccountButtonTapped), for: .touchUpInside)
        
        stackView.addArrangedSubview(loginButton)
        loginButton.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc func createAccountButtonTapped(){
        print("login tapped")
        let signUpVC: SignUpViewController = SignUpViewController()
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    @objc func loginButtonTapped(){
        print("sign up tapped")
        let tabBarVC: TabBarController = TabBarController()
        self.navigationController?.pushViewController(tabBarVC, animated: true)
    }
    
}
