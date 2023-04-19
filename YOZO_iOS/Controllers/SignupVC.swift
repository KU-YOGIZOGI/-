//
//  SignupVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/12.
//

import Foundation
import UIKit
import SnapKit

class SignUp: UIViewController {
    
    private let idLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "아이디"
        Label.textColor = UIColor(r: 1, g: 1, b: 1)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 18)
        Label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
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
        textField.font = UIFont(name: "AppleSDGothicNeoM00-Regular", size: 17)
        textField.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        
        return textField
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    func setup(){
        self.view.addSubview(idLabel)
        self.view.addSubview(signUpIdTextField)
        
        idLabel.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 176, left: 60, bottom: 646, right: 241))
        }
        signUpIdTextField.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(3)
            make.left.equalTo(idLabel.snp.left)
            make.right.equalToSuperview().offset(-60)
            make.height.equalTo(25)
        }
    }
}
