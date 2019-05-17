//
//  LoginViewController.swift
//  AutoLayOut
//
//  Created by Phạm Huy on 5/17/19.
//  Copyright © 2019 Phạm Huy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //background
        let backGR = UIImageView()
        backGR.image = UIImage(named: "wp2524757")
        backGR.contentMode = .scaleToFill
        view.addSubview(backGR)

        let topbg = NSLayoutConstraint(item: backGR, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let leftbg = NSLayoutConstraint(item: backGR, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
        let rightbg = NSLayoutConstraint(item: backGR, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0)
        let bottombg = NSLayoutConstraint(item: backGR, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        backGR.autoresizesSubviews = false
        backGR.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([topbg, leftbg, rightbg, bottombg])
        //UIView div
        let viewDivConten = UIView()
        view.addSubview(viewDivConten)
        viewDivConten.backgroundColor = .black
        viewDivConten.alpha = 0.3
        viewDivConten.layer.cornerRadius = 10
        viewDivConten.clipsToBounds = true

        let topV = NSLayoutConstraint(item: viewDivConten, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 50)
        let leftV = NSLayoutConstraint(item: viewDivConten, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 20)
        let rightV = NSLayoutConstraint(item: viewDivConten, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -20)
        let heightV = NSLayoutConstraint(item: viewDivConten, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 250 )
        viewDivConten.translatesAutoresizingMaskIntoConstraints = false
        viewDivConten.autoresizesSubviews = false
        view.addConstraints([topV, leftV, rightV, heightV])

        //UIView Login
        let viewLogin = UIView()
        view.addSubview(viewLogin)
        viewLogin.backgroundColor = .clear
        viewLogin.layer.cornerRadius = 10
        viewLogin.clipsToBounds = true

        viewLogin.translatesAutoresizingMaskIntoConstraints = false
        viewLogin.autoresizesSubviews = false

        let topLogin = NSLayoutConstraint(item: viewLogin, attribute: .top, relatedBy: .equal, toItem: viewDivConten, attribute: .top, multiplier: 1, constant: 0)
        let leftLogin = NSLayoutConstraint(item: viewLogin, attribute: .left, relatedBy: .equal, toItem: viewDivConten, attribute: .left, multiplier: 1, constant: 0)
        let rightLogin = NSLayoutConstraint(item: viewLogin, attribute: .right, relatedBy: .equal, toItem: viewDivConten, attribute: .right, multiplier: 1, constant: 0)
        let heightLogin = NSLayoutConstraint(item: viewLogin, attribute: .height, relatedBy: .equal, toItem: viewDivConten, attribute: .height, multiplier: 1, constant: 0 )
        view.addConstraints([topLogin, leftLogin, rightLogin, heightLogin])

        //Textfield with user pass
        //Textfield Username
        let txtUsername = UITextField()
        txtUsername.placeholder = "👤 Username"
        txtUsername.borderStyle = .roundedRect
        txtUsername.isUserInteractionEnabled = true
        viewLogin.addSubview(txtUsername)

        txtUsername.autoresizesSubviews = false
        txtUsername.translatesAutoresizingMaskIntoConstraints = false

        let topUsername = NSLayoutConstraint(item: txtUsername, attribute: .top, relatedBy: .equal, toItem: viewLogin, attribute: .top, multiplier: 1, constant: 20)
        let leftUsername = NSLayoutConstraint(item: txtUsername, attribute: .left, relatedBy: .equal, toItem: viewLogin, attribute: .left, multiplier: 1, constant: 20)
        let rightUsername = NSLayoutConstraint(item: txtUsername, attribute: .right, relatedBy: .equal, toItem: viewLogin, attribute: .right, multiplier: 1, constant: -20)
        let heightUsername = NSLayoutConstraint(item: txtUsername, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 40)

        viewLogin.addConstraints([topUsername,leftUsername,rightUsername,heightUsername])


//        //TextField Password
        let txtPassword = UITextField()
        txtPassword.isSecureTextEntry = true
        txtPassword.placeholder = "🔒 Password"
        txtPassword.borderStyle = .roundedRect
        txtPassword.isUserInteractionEnabled = true
        viewLogin.addSubview(txtPassword)

        txtPassword.autoresizesSubviews = false
        txtPassword.translatesAutoresizingMaskIntoConstraints = false

        let topPassword = NSLayoutConstraint(item: txtPassword, attribute: .top, relatedBy: .equal, toItem: txtUsername, attribute: .bottom, multiplier: 1, constant: 20)
        let leftPassword = NSLayoutConstraint(item: txtPassword, attribute: .left, relatedBy: .equal, toItem: viewLogin, attribute: .left, multiplier: 1, constant: 20)
        let rightPassword = NSLayoutConstraint(item: txtPassword, attribute: .right, relatedBy: .equal, toItem: viewLogin, attribute: .right, multiplier: 1, constant: -20)
        let heightPassword = NSLayoutConstraint(item: txtPassword, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 40)

        viewLogin.addConstraints([topPassword,leftPassword,rightPassword,heightPassword])


        //Button Login
        let btnLogin:UIButton! = UIButton(type:.custom)
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.setTitleColor(UIColor.white, for: .normal)
        btnLogin.backgroundColor = UIColor.clear
        btnLogin.titleLabel!.font = UIFont(name: "Helvetica", size: 24)
        btnLogin.titleLabel?.textAlignment = .left
        btnLogin.layer.cornerRadius = 10
        btnLogin.layer.borderWidth = 2
        btnLogin.layer.borderColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1).cgColor

        viewLogin.addSubview(btnLogin)

        btnLogin.autoresizesSubviews = false
        btnLogin.translatesAutoresizingMaskIntoConstraints = false

        let topbtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .top, relatedBy: .equal, toItem: txtPassword, attribute: .bottom, multiplier: 1, constant: 40)
        let leftbtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .left, relatedBy: .equal, toItem: viewLogin, attribute: .left, multiplier: 1, constant: 20)
        let widthbtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .width, relatedBy: .equal, toItem: txtPassword, attribute: .width, multiplier: 1/2, constant: -20)
        let heightbtnLogin = NSLayoutConstraint(item: btnLogin, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 40)

        viewLogin.addConstraints([topbtnLogin, leftbtnLogin, widthbtnLogin, heightbtnLogin])


        //Button Register
        let btnRegister:UIButton! = UIButton(type:.custom)

        btnRegister.setTitle("Register", for: .normal)
        btnRegister.setTitleColor(UIColor.white, for: .normal)
        btnRegister.backgroundColor = UIColor.clear
        btnRegister.titleLabel!.font = UIFont(name: "Helvetica", size: 24)
        btnRegister.titleLabel?.textAlignment = .left
        btnRegister.layer.cornerRadius = 10
        btnRegister.layer.borderWidth = 2
        btnRegister.layer.borderColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1).cgColor

        viewLogin.addSubview(btnRegister)

        btnRegister.autoresizesSubviews = false
        btnRegister.translatesAutoresizingMaskIntoConstraints = false

        let topbtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .top, relatedBy: .equal, toItem: txtPassword, attribute: .bottom, multiplier: 1, constant: 40)
        let rightbtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .right, relatedBy: .equal, toItem: viewLogin, attribute: .right, multiplier: 1, constant: -20)
        let widthbtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .width, relatedBy: .equal, toItem: txtPassword, attribute: .width, multiplier: 1/2, constant: -20)
        let heightbtnRegister = NSLayoutConstraint(item: btnRegister, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 40)

        viewLogin.addConstraints([topbtnRegister, rightbtnRegister, widthbtnRegister, heightbtnRegister])
    }
    
}
