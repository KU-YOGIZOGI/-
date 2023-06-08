//
//  LoginVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/12.
//

import UIKit
import SnapKit

class LoginVC: UIViewController {
    
    private let viewModel = LoginViewModel()
    
    private let logoLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "요기조기"
        Label.textColor = UIColor(r: 0, g: 0, b: 0)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 20)
        Label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        
        return Label
        
    }()
    private let logoENLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "YOGI-ZOGI"
        Label.textColor = UIColor(r: 0, g: 0, b: 0)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 20)
        Label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        return Label
        
    }()
    
    private let idTextField: InsetTextField = {
        
        let textField = InsetTextField();
        
        textField.placeholder = "ID"
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = UIColor(r: 0, g: 0, b: 0)
        textField.setPlaceholder(color: UIColor(r: 188, g: 188, b: 188))
        textField.insetX = 10
        //   textField.addleftimage(image: UIImage(named: "search"))
        textField.font = UIFont(name: "AppleSDGothicNeoM00-Regular", size: 17)
        textField.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        //    textField.layer.shadowColor = UIColor.black.cgColor
        //    textField.layer.shadowOffset = CGSize(width: 0, height: 4)
        //    textField.layer.shadowRadius = 4
        //    textField.layer.shadowOpacity = 0.25
        
        return textField
        
    }()
    
    private let pwTextField: InsetTextField = {
        
        let textField = InsetTextField();
        
        textField.placeholder = "Password"
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = UIColor(r: 0, g: 0, b: 0)
        textField.setPlaceholder(color: UIColor(r: 188, g: 188, b: 188))
        textField.insetX = 10
        //   textField.addleftimage(image: UIImage(named: "search"))
        textField.font = UIFont(name: "AppleSDGothicNeoM00-Regular", size: 17)
        textField.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        //    textField.layer.shadowColor = UIColor.black.cgColor
        //    textField.layer.shadowOffset = CGSize(width: 0, height: 4)
        //    textField.layer.shadowRadius = 4
        //    textField.layer.shadowOpacity = 0.25
        
        return textField
        
    }()
    
    private let loginButton: UIButton = {
        
        let button = UIButton()
        
        button.clipsToBounds = true
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.25
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
        
    }()
    
    private let searchIdBotton: UIButton = {
        
        let button = UIButton()
        
        button.clipsToBounds = true
        button.setTitle("아아디 찾기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        button.setTitleColor(UIColor(r: 146, g: 143, b: 143), for: .normal)
        
        
        //     button.addTarget(MainViewController.self, action: #selector(filterbuttonTapped), for: .touchUpInside)
        
        return button
        
    }()
    private let searchPwButton: UIButton = {
        
        let button = UIButton()
        
        button.clipsToBounds = true
        button.setTitle("비밀번호 찾기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        button.setTitleColor(UIColor(r: 146, g: 143, b: 143), for: .normal)
        
        //     button.addTarget(MainViewController.self, action: #selector(filterbuttonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    private let signUpButton: UIButton = {
        
        let button = UIButton()
        
        button.clipsToBounds = true
        button.setTitle("회원가입", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        button.setTitleColor(UIColor(r: 146, g: 143, b: 143), for: .normal)
        
        button.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    
    
    func setup(){
        
        view.backgroundColor = UIColor(r: 255, g: 215, b: 0)
        
        self.view.addSubview(logoLabel)
        self.view.addSubview(logoENLabel)
        self.view.addSubview(idTextField)
        self.view.addSubview(pwTextField)
        self.view.addSubview(loginButton)
        self.view.addSubview(searchIdBotton)
        self.view.addSubview(searchPwButton)
        self.view.addSubview(signUpButton)
        
        pwTextField.isSecureTextEntry = true
        self.idTextField.autocapitalizationType = .none
        
        logoLabel.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 231, left: 120, bottom: 558, right: 95))
        }
        logoENLabel.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 291, left: 145, bottom: 540, right: 95))
        }
        idTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(365)
            make.left.equalToSuperview().offset(53)
            make.right.equalToSuperview().offset(-53)
            make.height.equalTo(25)
        }
        pwTextField.snp.makeConstraints{ make in
            make.top.equalTo(idTextField.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(53)
            make.right.equalToSuperview().offset(-53)
            make.height.equalTo(25)
        }
        
        loginButton.snp.makeConstraints{ make in
            make.top.equalTo(pwTextField.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(53)
            make.right.equalToSuperview().offset(-53)
            make.height.equalTo(30)
        }
        signUpButton.snp.makeConstraints{ make in
            make.top.equalTo(loginButton.snp.bottom).offset(13)
            make.left.equalToSuperview().offset(100)
            make.right.equalTo(searchIdBotton.snp.left).offset(-7)
            make.height.equalTo(14)
        }
        
        searchIdBotton.snp.makeConstraints{ make in
            make.top.equalTo(loginButton.snp.bottom).offset(13)
            make.left.equalTo(signUpButton.snp.right).offset(20)
            make.width.equalTo(65)
            make.height.equalTo(14)
        }
        searchPwButton.snp.makeConstraints{ make in
            make.top.equalTo(loginButton.snp.bottom).offset(13)
            make.left.equalTo(searchIdBotton.snp.right).offset(3)
            make.width.equalTo(80)
            make.height.equalTo(14)
        }
        
        
    }
    
    @objc private func signupButtonTapped(_ sender: UIButton) {
        let secondVC = SignupVC()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc private func loginButtonTapped(_ sender: UIButton) {
        let secondVC = MainVC()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
    
}

