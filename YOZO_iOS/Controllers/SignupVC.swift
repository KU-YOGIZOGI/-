//
//  SignupVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/23.
//

import UIKit
import SnapKit

class SignupVC: UIViewController {
    
    private let idLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "아이디"
        Label.textColor = UIColor(r: 1, g: 1, b: 1)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 17)
        Label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        
        return Label
        
    }()
    private let signUpIdTextField: InsetTextField = {
        
        let textField = InsetTextField();
        
        textField.placeholder = "영문/숫자 5자리 이상"
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = UIColor(r: 0, g: 0, b: 0)
        textField.setPlaceholder(color: UIColor(r: 188, g: 188, b: 188))
        textField.insetX = 10
        textField.font = UIFont(name: "AppleSDGothicNeoM00-Regular", size: 14)
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        return textField
    }()
        
    private let pwLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "비밀번호"
        Label.textColor = UIColor(r: 1, g: 1, b: 1)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 17)
        Label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        
        return Label
        
    }()
    
    private let signUpPwTextField: InsetTextField = {
        
        let textField = InsetTextField();
        
        textField.placeholder = "영문/숫자/특수문자 포함 8자리 이상"
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = UIColor(r: 0, g: 0, b: 0)
        textField.setPlaceholder(color: UIColor(r: 188, g: 188, b: 188))
        textField.insetX = 10
        textField.font = UIFont(name: "AppleSDGothicNeoM00-Regular", size: 14)
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        return textField
        
    }()
    
    private let pwCheckLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "비밀번호 확인"
        Label.textColor = UIColor(r: 1, g: 1, b: 1)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 17)
        Label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        
        return Label
        
    }()
    
    private let signUpPwCheckTextField: InsetTextField = {
        
        let textField = InsetTextField();
        
        textField.placeholder = "영문/숫자/특수문자 포함 8자리 이상"
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = UIColor(r: 0, g: 0, b: 0)
        textField.setPlaceholder(color: UIColor(r: 188, g: 188, b: 188))
        textField.insetX = 10
        textField.font = UIFont(name: "AppleSDGothicNeoM00-Regular", size: 14)
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        return textField
        
    }()
    
    private let emailLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "이메일"
        Label.textColor = UIColor(r: 1, g: 1, b: 1)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 17)
        Label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        
        return Label
        
    }()
    
    private let emailTextField: InsetTextField = {
        
        let textField = InsetTextField();
        
        textField.placeholder = "이메일을 입력하세요"
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = UIColor(r: 0, g: 0, b: 0)
        textField.setPlaceholder(color: UIColor(r: 188, g: 188, b: 188))
        textField.insetX = 10
        textField.font = UIFont(name: "AppleSDGothicNeoM00-Regular", size: 14)
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        return textField
        
    }()
    private let emailNoticeLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "계정 분실시, 본인 인증 정보로 활용됩니다."
        Label.textColor = UIColor(r: 255, g: 255, b: 255)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 11)
        Label.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        
        return Label
        
    }()
    
    private let doneButton: UIButton = {
        
        let button = UIButton()
        
        button.clipsToBounds = true
        button.setTitle("완료", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.25
        //     button.addTarget(MainViewController.self, action: #selector(filterbuttonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    func setup(){
        
        view.backgroundColor = UIColor(r: 255, g: 215, b: 0)
        
        self.view.addSubview(idLabel)
        self.view.addSubview(signUpIdTextField)
        self.view.addSubview(pwLabel)
        self.view.addSubview(signUpPwTextField)
        self.view.addSubview(pwCheckLabel)
        self.view.addSubview(signUpPwCheckTextField)
        self.view.addSubview(emailLabel)
        self.view.addSubview(emailTextField)
        self.view.addSubview(emailNoticeLabel)
        self.view.addSubview(doneButton)
        
        signUpPwTextField.isSecureTextEntry = true //TF masking
        signUpPwCheckTextField.isSecureTextEntry = true
        self.signUpIdTextField.autocapitalizationType = .none //TF 항상 소문자 영어로 시작
        self.emailTextField.autocapitalizationType = .none
        
     
        idLabel.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 176, left: 50, bottom: 646, right: 241))
        }
        signUpIdTextField.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(3)
            make.left.equalTo(idLabel.snp.left)
            make.right.equalToSuperview().offset(-50)
            make.height.equalTo(28)
        }
        
        pwLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpIdTextField.snp.bottom).offset(10)
            make.left.equalTo(idLabel.snp.left)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
        signUpPwTextField.snp.makeConstraints { make in
            make.top.equalTo(pwLabel.snp.bottom).offset(3)
            make.left.equalTo(idLabel.snp.left)
            make.right.equalToSuperview().offset(-50)
            make.height.equalTo(28)
        }
        
        pwCheckLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpPwTextField.snp.bottom).offset(10)
            make.left.equalTo(idLabel.snp.left)
            make.width.equalTo(150)
            make.height.equalTo(25)
        }
        signUpPwCheckTextField.snp.makeConstraints { make in
            make.top.equalTo(pwCheckLabel.snp.bottom).offset(3)
            make.left.equalTo(idLabel.snp.left)
            make.right.equalToSuperview().offset(-50)
            make.height.equalTo(28)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpPwCheckTextField.snp.bottom).offset(10)
            make.left.equalTo(idLabel.snp.left)
            make.width.equalTo(150)
            make.height.equalTo(25)
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(3)
            make.left.equalTo(idLabel.snp.left)
            make.right.equalToSuperview().offset(-50)
            make.height.equalTo(28)
        }
        emailNoticeLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(3)
            make.left.equalTo(idLabel.snp.left)
            make.width.equalTo(300)
            make.height.equalTo(15)
        }
        doneButton.snp.makeConstraints{ make in
            make.top.equalTo(emailNoticeLabel.snp.bottom).offset(60)
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-50)
            make.height.equalTo(33)
        }
        
    }
}

