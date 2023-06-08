//
//  LoginViewModel.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/19.
//

import Foundation
import UIKit

class LoginViewModel {
    var username: String = ""
    var password: String = ""

    func login(completion: @escaping (Bool) -> ()) {
        // TODO: Implement login logic here
        // For now, just return true to simulate successful login
        completion(true)
    }
}
