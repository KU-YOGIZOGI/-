//
//  AppDelegate.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/12.
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
                
                // 첫 번째 View Controller 생성
                let firstVC = LoginVC()
                
                // UINavigationController 생성 및 첫 번째 View Controller 설정
                let navigationController = UINavigationController(rootViewController: firstVC)
                
                // UIWindow의 rootViewController로 UINavigationController 설정
                window?.rootViewController = navigationController
                
                // UIWindow 표시
                window?.makeKeyAndVisible()
                
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

